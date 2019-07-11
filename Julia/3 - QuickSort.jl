function qsort(a)
    b = qsort_kernel(a,1,length(a));
    return b;
end

function qsort_kernel(a,lo,hi)
    i = lo;
    j = hi;
    while i<=j
        pivor = a[trunc(Int,(lo+hi)/2)];
        while i<=j
            while a[i] < pivor && i<hi
                i = i + 1;
            end
            while (a[j] > pivor && j>lo)
                j = j - 1;
            end
            if i<=j
                t = a[i];
                a[i] = a[j];
                a[j] = t;
                i = i + 1;
                j = j - 1;
            end
        end
        if j>lo
            a = qsort_kernel(a,lo,j);
        end
        if i<hi
            a = qsort_kernel(a,i,hi);
        end
    end
    return a;
end

function mainn()
    n = 1000;
    v = rand(n);
    resp = qsort(v);

    for i=1:n
            println(resp[i])
    end
end

println("TEMPO: ",@elapsed mainn())
