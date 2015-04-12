# PrimesMultiplicationTableGenerator

Small gem written as part of an application for a Ruby Dev gig.

## Installation

Add this line to your application's Gemfile:

    gem 'PrimesMultiplicationTableGenerator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install PrimesMultiplicationTableGenerator

## Usage

Assuming that you've installed this as a gem, you should be able to:

    $ generate-primes-multiplication-table

This will dump out a default table of 10 primes, using a 'lower level' rake task.

If you'd like dump out a table for an arbitrary number of primes, you can use the
rake task directly:

    $ rake coding_exercises:generate_primes_multiplication_table[15]

See the code for details on how the prime numbers are found (PrimesHelper) and how the
table is generated (TableGenerator).  Basic specs are also provoded.

## Contributing

1. Fork it ( https://github.com/jacgreen/PrimesMultiplicationTableGenerator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
