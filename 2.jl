# starting with 1 and 2, by considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms.#

function main()
  x = [1,2]
  for i = 3:10000000
    x = append!(x, x[i-2]+x[i-1])
    if x[i]>=4000000
    break
    end
  end
  a = filter(iseven, x)
  println(sum(a))
end

main()

  
