function  relacaoSucessiva()
    A = [4.0 -2.0 1.0 3.0 0.0;-1.0 10.0 0.0 8.0 1.0;-1.0 1.0 15.0 2.0 4.0;0.0 1.0 10.0 5.0 1.0;2.0 -3.0 1.0 2.0 20.0];
    b = [15.0 56.0 74.0 57.0 107.0]
    x = [0.0 0.0 0.0 0.0 0.0]
    v = [0.0 0.0 0.0 0.0 0.0]
    iterMax=500
    iter = 0
    normaRel = 1000
    w= 1.6
    toler = 1e-5
    n = size(A,1)
    for i = 1:n
        r = 1/A[i,i]
        for j=1:n
            if i!=j
                A[i,j] = A[i,j] * r
            end
        end
        b[i] = b[i] * r
        x[i] = b[i]
    end
    while normaRel>toler && iter<iterMax
        iter+=1
        for i=1:n
            soma = 0.0
            for j=1:n
                if i!=j
                    soma = soma + A[i,j] * x[j]
                end
            end
            v[i] = x[i]
            x[i] = w*(b[i]-soma)+(1.00-w)*x[i]
        end
        normaNum = normaDen = 0
        for i=1:n
            t = abs(x[i]-v[i])
            if t>normaNum
                normaNum = t
            end
            if (abs(x[i])>normaDen)
                normaDen = abs(x[i])
            end
        end
        normaRel = normaNum/normaDen
    end
    if normaRel<=toler
        condErro = 0
    else
        confErro = 1
    end
    println("iter: ", iter)
    println(" ", x)
    println("normaRel: ", normaRel)
end


println("TEMPO: ",@elapsed relacaoSucessiva())
