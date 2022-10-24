pipeline {
    agent any

    parameters {
        string defaultValue: '2', description: 'Number to compute in the Fibonacci Sequence', name: 'num', trim: true
    }

    stages {
        stage('Validate Parameter') {
            steps {
                script {
                    assert params.num.isInteger()
                }
            }
        }
        stage('Create Cache') {
            steps {
                script {
                    if (!fileExists("fibCache")) {
                        sh 'echo "0\n1" > fibCache'
                    }
                }
            }
        }
        stage('Get Fibbonacci') {
            steps {
                script {
                    nComputed = sh(returnStdout: true, script: "wc -l < fibCache").trim().toInteger()
                    result = fib(params.num.toInteger())
                    println("The result is F(${params.num}) = ${result}")
                }
            }
        }
    }
}

def nComputed

int fib(int n, cache = 'fibCache') {
    if (n >= nComputed) {
        // Need to do more recursion
        result = fib(n - 2, cache) + fib(n - 1, cache)
        nComputed++
        sh "echo '${result}' >> ${cache}"
        return result
    } else {
        // Already have what we need, so read from cache
        return sh(returnStdout: true, script: "sed -n '${n + 1}p' ${cache}").toInteger()
    }
}
