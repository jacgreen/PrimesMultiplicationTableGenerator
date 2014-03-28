require 'rspec'
require 'spec_helper'
describe '#find_upper_bound' do

  it 'should return the integer upper bound given the desired number of primes' do

    expect(find_upper_bound(1)).to eq(1)

  end
end