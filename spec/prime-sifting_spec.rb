require ('rspec')
require ('prime-sifting')

describe('prime_sifting') do
  it('should list all the prime numbers up to the given input number') do
    prime_sifting(3).should(eq([2]))
  end

  it('should list all the prime numbers up to the given input number') do
    prime_sifting(10).should(eq([2, 3, 5, 7]))
  end
end

describe('nth_prime') do
  it('should take a number n and list the first n primes') do
    nth_prime(5).should(eq([2, 3, 5, 7, 11]))
  end
end
