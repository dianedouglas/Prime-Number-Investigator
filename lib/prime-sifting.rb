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

def nth_prime(total_primes)
  current_primes = []
  sift_limit = total_primes
  while current_primes.length < total_primes do
    current_primes = prime_sifting(sift_limit)
    sift_limit*=2
  end
  if current_primes.length > total_primes
    length_dif = current_primes.length - total_primes
    current_primes.pop(length_dif)
  end
current_primes
end

prime_sifting(10)
