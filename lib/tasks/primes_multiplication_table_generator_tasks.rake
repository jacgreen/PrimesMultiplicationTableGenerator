require 'PrimesMultiplicationTableGenerator'

namespace :coding_exercises do
  desc 'Generate a multiplication table of the first N prime numbers'
  task :generate_primes_multiplication_table, [:number_of_primes] do |t, args|
    args.with_defaults(
        :number_of_primes => 5
    )

    # be aware that rake params come in as strings - the 'to_i' that is used in
    # the invocation here is needed in case we're given a param and are not simply
    # using the default value defined here in the task.
    PrimesMultiplicationTableGenerator.generate_multiplication_table(number_of_primes: args[:number_of_primes].to_i)
  end
end