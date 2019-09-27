# Takes the argument and returns the length of the collatz sequence
def collatz_length(num)
  count = 1

  while num > 1
    if num.even?
      num = num / 2
    else
      num = 3 * num + 1
    end
    count += 1
  end
  return count
end

# Will loop through a start and end point and return the number with the longest collatz sequence
def find_longest_collatz(start, stop)
  longest_collatz = 0
  (start..stop).each do |i|
    if collatz_length(i) > longest_collatz
      longest_collatz = i
    end
  end
  return longest_collatz
end

puts find_longest_collatz(1, 1000000)