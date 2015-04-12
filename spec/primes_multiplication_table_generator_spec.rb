require 'spec_helper'

describe PrimesMultiplicationTableGenerator do

  describe '.generate_multiplication_table' do

    let(:table_contents) {/.*2.*3.*5\n.*2.*4.*6.*10\n.*3.*6.*9.*15\n.*5.*10.*15.*25/}

    it 'builds a string with expected contents' do
      expect{described_class.generate_multiplication_table(number_of_primes: 3)}.to output(table_contents).to_stdout
    end

  end
end