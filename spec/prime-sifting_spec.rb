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
