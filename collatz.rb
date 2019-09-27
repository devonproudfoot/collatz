def find_collatz(num)
  count = 1

  while num > 1
    if num % 2 == 0
      num = num / 2
    else
      num = 3 * num + 1
    end
    count += 1
  end
  return count
end

def find_highest_collatz(start, stop)
  top_collatz = 0
  (start..stop).each do |i|
    collatz = find_collatz(i)

    if collatz > top_collatz
      top_collatz = i
    end
  end
  return top_collatz
end

puts find_highest_collatz(1, 1000000)