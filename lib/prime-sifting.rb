def prime_sifting(final_number)
  all_numbers = (2..final_number-1).to_a
  prime = 2
  all_numbers.each do |current_number|
    next_multiple = current_number * 2
    if current_number % prime == 0
      while next_multiple < final_number do
        all_numbers.delete(next_multiple)
        next_multiple += current_number
      end
    end
    prime += 1
  end
  all_numbers
end

prime_sifting(10)
