require ('rspec')
require ('prime_number_investigator')
require ('pry')

describe('prime_sifting: a function to list all the prime numbers up to the given input number.') do
  
  before do
    @test_prime_number_investigator = PrimeNumberInvestigator.new
  end

  it('Checks that the class is loaded correctly') do 
    expect(@test_prime_number_investigator).to be_an_instance_of PrimeNumberInvestigator
  end

  it('Given the number 3, it should list just the first prime number 2.') do
    expect(@test_prime_number_investigator.prime_sifting(3)).to eq([2])
  end

  it('Given a larger input number of 8, list prime numbers up to 10.') do
    expect(@test_prime_number_investigator.prime_sifting(8)).to eq([2, 3, 5, 7])
  end

  it('With input 26, which is more than 1 greater than the highest prime in sequence (23) it should list primes up to 26.') do
    expect(@test_prime_number_investigator.prime_sifting(26)).to eq([2,3,5,7,11,13,17,19,23])
  end
  
  it('We want primes up to and not including the input. Since 0 and 1 are not primes, 2 should return an empty array.') do
    expect(@test_prime_number_investigator.prime_sifting(2)).to eq([])
  end

end

describe('nth_prime: a function to list a quantity of primes rather than limiting them to a highest number.') do
  
  before do
    @test_prime_number_investigator = PrimeNumberInvestigator.new
  end

  it('an input of 1 should list first prime, 2.') do
    expect(@test_prime_number_investigator.nth_prime(1)).to eq([2])
  end
  
  it('an input of 2 should list first two primes.') do
    expect(@test_prime_number_investigator.nth_prime(2)).to eq([2, 3])
  end
  
  it('an input of 5 should list first 5 primes.') do
    expect(@test_prime_number_investigator.nth_prime(5)).to eq([2, 3, 5, 7, 11])
  end

end
