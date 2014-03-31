require 'spec_helper'

describe 'TableGenerator' do

  describe '#set_table_field_width' do
    it 'should set the field with member in the module' do
      TableGenerator.prepare_table_field_width([1,10])
      expect(TableGenerator.field_width).to eq(5)
    end
  end
 #    2   3   5
 # 2  4   6  10
 # 3  6   9  15
 # 5 10  15  25

  describe '#get_line_contents' do
    it 'should build a line with the expected string' do
      TableGenerator.prepare_table_field_width([1,10])
      expect(TableGenerator.get_line_contents(2,[2,3,5])).to eq(" 2    4    6   10")
    end
  end

  describe '#get_header_line' do
    it 'should build a line with the expected header string' do
      TableGenerator.prepare_table_field_width([1,10])
      expect(TableGenerator.get_header_line_contents([2,3,5])).to eq("      2    3    5")
    end
  end

  describe "#dump_table" do
    it 'should build a string with expected contents' do
      TableGenerator.prepare_table_field_width([1,10])
      expect(TableGenerator.dump_table([2,3,5])).to eq("      2    3    5")
    end
  end
end