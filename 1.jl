# Find the sum of all the multiples of 3 or 5 below 1000.
function MkArr()
    a = zeros(Int64, 20)
    b = zeros(Int64, 20)
    for i = 1:20
        a[i] = 3*i
        b[i] = 5*i
    end
    return (a, b)
end

# List Comprehension
A = [3*i for i=1:20]
B = [5*i for i=1:20]

function Find()
    a = []
    b = []
    for i = 1:20
        if mod(i,3)==0
            append!(a,i)
        elseif mod(i, 5)==0
            append!(b ,i)
        end
    end
    return (a,b)
end

function main()
    (a,b) = MkArr()
    (c,d) = Find()
    println(a)
    println(b)
    println(c)
    println(d)
end

# functional programming in Julia
C = filter(x -> mod(x,3)==0, 1:20)
D = filter(x -> mod(x,5)==0, 1:20)

sol1 = filter(x -> mod(x, 3) == 0, 1:999)
sol2 = filter(x -> mod(x, 5) == 0, 1:999)
sol3 = filter(x -> mod(x, 15) == 0, 1:999)
sol = sum(sol1) + sum(sol2) - sum(sol3)

# Most simple way! This is an advantage of Julialang
sol_ultimate = sum(filter(x -> mod(x, 3)==0 || mod(x,5)==0, 1:999))
