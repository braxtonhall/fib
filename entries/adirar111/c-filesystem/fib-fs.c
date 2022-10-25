/* fib, but the cache is a directory of files
 *  cache/
 *    0 -> 0
 *    1 -> 1
 *    2 -> 1
 *    3 -> 2
 *    ...
 * unix filesystem required
*/
#include <dirent.h>
#include <string.h>
#include <stdio.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <fcntl.h>
#include <unistd.h>
#include <stdlib.h>

static const char CACHE_DIR[] = "cache";
static const int BUF_SIZE = 30;
static const int PATH_SIZE = 30;
static const int N_STR_SIZE = 30;
static const int LOF_INITIAL_SIZE = 1;

long read_from_cache(char* path) {
	char buf[BUF_SIZE];
	int fd = open(path, O_RDONLY);

	if (fd == -1) {
		close(fd);
		return 0;
	}

	if (!read(fd, buf, BUF_SIZE)) {
		close(fd);
		return 0;
	}

	close(fd);
	return strtol(buf, NULL, 10);
}

long write_to_cache(char* path, long result) {
	char buf[BUF_SIZE];
	int fd = open(path, O_CREAT | O_RDWR, S_IRUSR | S_IWUSR);
	sprintf(buf, "%ld", result);

	if (fd == -1) {
		close(fd);
		return 0;
	}

	if (!write(fd, buf, strlen(buf))) {
		close(fd);
		return 0;
	}

	close(fd);
	return 1;
}

long init_cache() {
	char path_to_0[PATH_SIZE];
	char path_to_1[PATH_SIZE];
	sprintf(path_to_0, "%s/%s", CACHE_DIR, "0");
	sprintf(path_to_1, "%s/%s", CACHE_DIR, "1");

	if (!write_to_cache(path_to_0, 0)) {
		return 0;
	}

	if (!write_to_cache(path_to_1, 1)) {
		return 0;
	}

	return 1;
}

long get_list_of_files(long** list_of_files, long curr_size) {
	mkdir("cache", 0777);
	struct dirent *d;
	DIR* cache_dir = opendir(CACHE_DIR);

	if (!cache_dir) {
		closedir(cache_dir);
		return 0;
	}

	init_cache();

	while ((d = readdir(cache_dir)) != NULL) {
		if (d->d_type == DT_REG) {
			*((*list_of_files) + curr_size - 1) = strtol(d->d_name, NULL, 10);
			curr_size++;
			*list_of_files = realloc(*list_of_files, curr_size * sizeof(long));
		}
	}

	closedir(cache_dir);
	return curr_size - 1;
}


int is_in_cache(long* list_of_files, long size_of_lof, long n) {
	for (int i = 0; i < size_of_lof; i++) {
		if (list_of_files[i] == n) return 1;
	}
	return 0;
}

long fib(long n) {
	char n_str[N_STR_SIZE];
	char path[PATH_SIZE];
	long* list_of_files = malloc(sizeof(long));
	long size_of_lof = get_list_of_files(&list_of_files, LOF_INITIAL_SIZE);

	sprintf(n_str, "%ld", n);
	sprintf(path, "%s/%s", CACHE_DIR, n_str);

	if (is_in_cache(list_of_files, size_of_lof, n)) {
		free(list_of_files);
		long cached_value = read_from_cache(path);
		return cached_value;
	}

	free(list_of_files);
	long toCache = fib(n-1) + fib(n-2);
	write_to_cache(path,  toCache);
	return toCache;
}


int main() {
	printf("FIB RESULT: %ld\n", fib(13));
}
