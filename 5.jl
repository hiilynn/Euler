# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
all(x -> 2520%x == 0, 1:10)

# what is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

function IsPrime(n)
    if n == 1
        return false
    elseif n ==2 || n==3
        return true
    else n > 3
        for i = 2:n-1
            if n%i == 0
                return false
            else
                return true
            end
        end
    end
end

function IsPrime(n)
    if n == 1
        return false
    elseif n > 3
        all(x -> n%x != 0, 2:n-1)
    else
        return true
    end
end
