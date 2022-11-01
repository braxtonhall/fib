
effect store<k,v> {
  fun put(key: k, value: v): ()
  fun get(key: k): maybe<v>
}

fun no-store(body: () -> <store<k,v>,div|e> t): <div|e> t {
  with handler {
    fun get(key) Nothing
    fun put(key, value) {}
  } in {
    body()
  }
}

fun list-store(eq: (k,k) -> total bool, body: () -> <store<k,v>,div|e> t): <div|e> t {
  var data := Nil
  with handler {
    fun get(key) {
      data.lookup fn(candidate-key) key.eq(candidate-key)
    }
    fun put(key, value) {
      data := Cons((key, value), data.filter(fn((kk, _)) !kk.eq(key)))
    }
  } in {
    body()
  }
}

fun pair-store(body: () -> <store<int,int>,div|e> t): <console,div|e> t {
  var first := 0
  var second := 1
  var idx := 1

  with handler {
    fun get(key) {
      if idx == key then Just(second)
      else if idx - 1 == key then Just(first)
      else Nothing
    }
    fun put(key, value) {
      if key == idx + 1 then {
        idx := idx + 1
        first := second
        second := value
      } else {
        println("error: " ++ key.show ++ " := " ++ value.show ++ "; " ++ first.show ++ ", " ++ second.show ++ ", " ++ idx.show)
      }
    }
  } in {
    mask<console>(body)
  }
}

fun fib(n: int): <div,store<int,int>> int {
  match get(n) {
    Just(result) -> result
    Nothing ->
      match n {
        0 -> 0
        1 -> 1
        _ ->
          val result = fib(n - 2) + fib(n - 1)
          put(n, result)
          result
      }
  }
}

pub fun fib-naive(n: int): div int {
  with no-store
  fib(n)
}

pub fun fib-list(n: int): div int {
  with list-store(fn(a: int, b: int) a == b)
  fib(n)
}

pub fun fib-pair(n: int): <div,console> int {
  with pair-store
  fib(n)
}
