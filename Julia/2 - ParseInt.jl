function ParseInt()
    t = 1000
    for i = 1:t
        n = rand((0:(2^32-1)))
        s = string(n,base=16)
        m = parse(Int,s,base=16)
        @assert(m==n)
    end
end

println(@elapsed ParseInt())
