class PrimesHelper

  # a default method to find the upper bound for a set of prime numbers.
  # subclasses may prefer to provide their own implementation.
  def find_primes_upper_bound(in_number_of_primes)
    if in_number_of_primes > 5
      return (in_number_of_primes*Math.log(in_number_of_primes) + in_number_of_primes*Math.log( Math.log(in_number_of_primes) )).floor
    else
      # 11 is the 5th prime, no matter what number we're given, if it's
      # less than 5, we're never gonna have an upper bound greater than 11.
      return 11
    end
  end
end