function mandel(z)
    n = 0;
    c = z;
    for n=0:79
        if (abs(z)>2)
            return n;
        end
        z = (z ^ 2) + c;
    end

    return 80;
end

function mandelperf()
    println("começa aqui\n")
    m = zeros(26,21);
    cont = 1;
    r = -2;
    i = -1;
    for r = -2:0.1:0.5
        for i = -1:0.1:1
            m[cont] = mandel(complex(r,i));
            cont+=1;
        end
    end
    return m;
end
function mainn()
    y = mandelperf()
    println("Matriz de MandelBrot")
    for j=1:26
        for k=1:21
            print(" ", y[j,k])
        end
        println("");
    end
end

println("TEMPO: ",@elapsed mainn())
