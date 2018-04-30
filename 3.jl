# What is the largest prime factor of the number 600851475143 ?

# filter(x -> mod(600851475143,x)==0, 1:600851475143) # find divisors
# last(filter(x -> mod(600851475143,x)==0, 1:600851475143))
# it causes out of memory error because the list size is too big

#function Divisor(x)
#  s = 0
#  for i = 1:x
#    if mod(x,i) == 0
#      s += 1
#    end
#  end
#  return s
#end

function IsPrime(n)
  if n ==1
    return false
  end
  return all(x -> n%x != 0, 2: floor(sqrt(n))) # geometic mean
end

# Generate Prime numbers
# filter(IsPrime, 1:100)

function A(n)
  p = 2
  fac = []
  while n >= p
    if n % p == 0
      append!(fac, p)
      n /= p
    else
      p += 1
      while !IsPrime(p)
        p += 1
      end
    end
  end
  return fac
end

print(maximum(A(600851475143)))
