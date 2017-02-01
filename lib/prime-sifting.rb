def prime_sifting(final_number)
  all_numbers = (2..final_number-1).to_a
  all_numbers.each do |current_number|
    next_multiple = current_number * 2
    while next_multiple < final_number do
      all_numbers.delete(next_multiple)
      next_multiple += current_number
    end
  end
  all_numbers
end

def nth_prime(total_primes)
  current_primes = []
  sift_limit = total_primes
  while current_primes.length < total_primes do
    current_primes = prime_sifting(sift_limit)
    sift_limit*=2
  end
    length_dif = current_primes.length - total_primes
    current_primes.pop(length_dif)
  current_primes
end

puts "This program will investigate prime numbers. Whee! "
puts "First we'll tell it to find all the primes up to 15 by running prime_sifting(15)."
puts prime_sifting(15)
puts "Then we'll tell it to find the first 15 prime numbers by running nth_prime(15). Neat!"
puts nth_prime(15)