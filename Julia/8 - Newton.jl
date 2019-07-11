function f(x)
    return x^4+2*x^3-13*x^2-14*x+24
end

function dff(x)
    return 4*x^3+6*x^2-26*x-14
end

function Newton()
    x0 = 4
    toler = 1.0000e-5
    iterMax = 100
    fx = f(x0)
    dFx = dff(x0)
    x = x0
    iter = 0
    deltaX = 1000
    df = 1
    condErro = 0;
    h = abs(deltaX)
    println("deltaX ====> $h")
    j = abs(fx)
    println("fx ====> $j")
    while (abs(deltaX)>toler || abs(fx)>toler) && df==1  && iter<iterMax
        deltaX = fx/dFx
        x = x + deltaX
        fx = f(x)
        dFx = dff(x)
        iter = iter + 1
    end
    raiz = x;
    if abs(deltaX)<=toler && abs(fx)<=toler
        condErro = 0
    else
        condErro = 1;
    println("CondErro ====> $condErro")
    println("Raiz ====> $raiz")
    println("Iter ====> $iter")
    end
end

println("TEMPO: ",@elapsed Newton())
