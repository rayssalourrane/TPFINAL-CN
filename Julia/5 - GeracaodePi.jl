function pisum()
    s = 0.0;
    for j=1:500
        s = 0.0;
        for k =1:10000
            s = s + 1.0/(k*k)
        end
    end
    return s;
end

function mainn()
    a = pisum();
    println(a)
end

println("TEMPO: ",@elapsed mainn())
