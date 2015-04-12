require 'spec_helper'

describe PrimesMultiplicationTableGenerator::PrimesHelper do
  describe '#find_upper_bound' do
    it 'should return the integer upper bound given the desired number of primes' do
      expect(subject.find_primes_upper_bound(number_of_primes: 5)).to eq(11)
      expect(subject.find_primes_upper_bound(number_of_primes: 6)).to eq(14)
    end
  end

  describe '#find_n_primes' do

    it 'should return an array of the first prime' do
      expect(subject.find_n_primes(number_of_primes: 1)).to match_array([2])
    end

    it 'should return an array of the first prime' do
      expect(subject.find_n_primes(number_of_primes: 3)).to match_array([2,3,5])
    end

    it 'should return an array of the first 5 primes' do
      expect(subject.find_n_primes(number_of_primes: 5)).to match_array([2,3,5,7,11])
    end

    # list of first 100 primes found at wikipedia.
    it 'should return an array of the first 100 primes' do
      expect(subject.find_n_primes(number_of_primes: 100)).to match_array([2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509,521,523,541])
    end
  end
end
