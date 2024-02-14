def add_digits(num)

  if num > 0
    # take the number and substract 1. Why you ask?
    # when num is not dividible by 9, subtracting 1 won't affect the calculation
    # since the remainder will still be in the range of 1 to 8
    # if num is divisible by 9, we'd get 0. So subtracting 1 ensures that the remainder becomes 8 + 1
    1 + ((num - 1) % 9)
  else
    return 0
  end

  # if(num == 0)
  #   return 0;
  # elsif (num % 9 == 0)
  #   return 9;
  # else
  #   return num % 9;
  # end

  # new_digits = num
  # num_length = new_digits.to_s.length
  # while num_length > 1
  #   new_digits = new_digits.to_s.chars.each_slice(1).map {
  #     |new_array| new_array.join.to_i
  #   }.sum
  #   num_length = new_digits.to_s.length
  # end
  # return new_digits
end

puts add_digits(44333)
puts add_digits(4)
puts add_digits(0)
puts add_digits(17)
