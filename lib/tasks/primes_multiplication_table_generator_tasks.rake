require 'PrimesMultiplicationTableGenerator'

namespace :coding_exercises do
  desc 'Generate a multiplication table of the first N prime numbers'
  task :generate_primes_multiplication_table, [:number_of_primes] do |t, args|
    args.with_defaults(
        :number_of_primes => 5
    )
    PrimesMultiplicationTableGenerator.generate_multiplication_table(number_of_primes: args[:number_of_primes].to_i)
  end
end