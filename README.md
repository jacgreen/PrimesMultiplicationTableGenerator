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

# generate-primes-multiplication-table -h

To get to the command line help.  To specify the number of primes to include in the table, use the -n command line
option.

# generate-primes-multiplication-table -n 10

Will give you a multiplication table for the first 10 primes.

If you don't want to install it as a gem but still want to see it run, you can:

# ruby -I./lib bin/generate-primes-multiplication-table -n 10

from within the main project director.

## Contributing

1. Fork it ( https://github.com/jacgreen/PrimesMultiplicationTableGenerator/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
