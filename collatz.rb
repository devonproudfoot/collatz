# Takes the argument and returns the length of the collatz sequence
def collatz_length(num, known_collatz_lengths)
  count = 1

  while num != 1

    # If num is a key in the known_collatz_lengths hash then add value to count and return value
    if known_collatz_lengths[num]
      return count + known_collatz_lengths[num]
    end
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
  longest_collatz_count = 0
  known_collatz_lengths = {}

  (start..stop).each do |i|
    current_length = collatz_length(i, known_collatz_lengths)
    known_collatz_lengths[i] = current_length

    if current_length > longest_collatz_count
      longest_collatz = i
      longest_collatz_count = current_length
    end
  end
  return longest_collatz
end

puts find_longest_collatz(1, 1_000_000)