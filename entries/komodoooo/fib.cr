def fibonacci(n)
    a,b=0,1
    while a < n
        puts "#{a} "
        a,b=b,a+b
    end
end
print "Number: "
fibonacci(gets.not_nil!.to_i)
