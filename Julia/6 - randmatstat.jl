using LinearAlgebra
using Statistics

function randmatstat()
    t = 1000
    n = 5
    v = zeros(t)
    w = zeros(t)
    for i=1:t
        a = randn(n,n)
        b = randn(n,n)
        c = randn(n,n)
        d = randn(n,n)
        p = [a b c d]
        q = [a b; c d]
        v[i] = sum(diag((transpose(p)*p)^4))
        w[i] = sum(diag((transpose(q)*q)^4))
    end
    println("$(std(v)/mean(v))")
    println("$(std(w)/mean(w))")
end

println("TEMPO: ",@elapsed randmatstat())
