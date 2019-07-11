function fib(n)
    if n<2
        return f = n;
    else
        return f = fib(n-1) + fib(n-2);
    end
end


function mainn()
    n = 100;
    for i=1:n
            println(fib(i))
    end
end

println(@elapsed mainn())
