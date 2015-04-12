require 'PrimesMultiplicationTableGenerator/version'
require 'PrimesMultiplicationTableGenerator/primes_helper'
require 'PrimesMultiplicationTableGenerator/table_generator'

module PrimesMultiplicationTableGenerator

  module_function

  ##
  # High level wrapper to dump a multiplication table of prime numbers.
  #
  # The table will be produced to STDOUT - if a file is needed, use shell redirection.
  #
  # @param [Integer] number_of_primes the number of prime numbers that should be on each axis of the table
  def generate_multiplication_table(number_of_primes:)
    primes_helper = PrimesHelper.new()
    primes_array = primes_helper.find_n_primes(number_of_primes: number_of_primes)
    TableGenerator.dump_table(array_of_numbers: primes_array)
  end
end
