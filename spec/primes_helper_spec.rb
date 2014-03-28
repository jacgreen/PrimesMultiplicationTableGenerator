require 'spec_helper'

describe '#find_upper_bound' do
  it 'should return the integer upper bound given the desired number of primes' do
    expect(PrimesHelper.new().find_primes_upper_bound(5)).to eq(11)
    expect(PrimesHelper.new().find_primes_upper_bound(6)).to eq(14)
  end
end