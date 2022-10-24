pipeline {
    agent any

    parameters {
        string defaultValue: '2', description: 'Number to compute in the Fibonacci Sequence', name: 'num', trim: true
    }

    stages {
        stage('Create Cache') {
            steps {
                script {
                    if (!fileExists("fibbonacciCache")) {
                        sh 'echo "0\n1" > fibbonacciCache'
                    }
                }
            }
        }
        stage('Validate Parameter') {
            steps {
                script {
                    assert params.num.isInteger()
                }
            }
        }
        stage('Get Fibbonacci') {
            steps {
                script {
                    result = fib(params.num.toInteger())
                    println("The result is F(${params.num}) = ${result}")
                }
            }
        }
    }
}

int fib(int n, cache = 'fibbonacciCache') {
    nComputed = sh(returnStdout: true, script: "wc -l < ${cache}").trim().toInteger()
    if (n >= nComputed) {
        // Need to do more recursion
        result = fib(n - 2, cache) + fib(n - 1, cache)
        sh "echo '${result}' >> ${cache}"
        return result
    } else {
        // Already have what we need, so read from cache
        return sh(returnStdout: true, script: "sed -n '${n + 1}p' ${cache}").trim().toInteger()
    }
}

