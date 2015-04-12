class PrimesHelper

  # a default method to find the upper bound for a set of prime numbers.
  # subclasses may prefer to provide their own implementation.  again, this
  # method is derived from googled info, i didn't come up with this myself.
  def find_primes_upper_bound(number_of_primes:)
    if number_of_primes > 5
      return (number_of_primes*Math.log(number_of_primes) + number_of_primes*Math.log( Math.log(number_of_primes) )).floor
    else
      # 11 is the 5th prime, no matter what number we're given, if it's
      # less than 5, we're never gonna have an upper bound greater than 11.
      return 11
    end
  end

  # according to various places on the intertubes, a simple and relatively efficient way to
  # find primes is the sieve of eratosthenes.  i'm certainly not enough of a math head to
  # come up with something like this on my own, so googling was important.  basically the
  # way the algorithm works is by looking at an array and iteratively skip counting through
  # it.  you stop iterating when you reach a value that is greater than the sqrt of the
  # largest number in the array (as the higher values have all already been marked or
  # are prime.)  once you stop iterating, any values that remain non-null are prime.
  # time complexity here is  O(n(log(log(n))), which is not terrible.
  def find_n_primes(number_of_primes:)

    upper_bound = self.find_primes_upper_bound(number_of_primes: number_of_primes)

    primes = []
    for i in 2 .. upper_bound
      primes[i] = i
    end

    for i in 2 .. Math.sqrt(upper_bound)
      next unless primes[i]
      (i*i).step(upper_bound, i) do |j|
        primes[j] = nil
      end
    end
    primes.compact.slice(0, number_of_primes)
  end
end