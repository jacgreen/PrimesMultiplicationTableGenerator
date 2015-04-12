require 'spec_helper'

describe 'TableGenerator' do

  before do
    TableGenerator.prepare_table_field_width([1,10])
  end

  describe '.set_table_field_width' do
    it 'sets the field with member in the module' do
      expect(TableGenerator.field_width).to eql(5)
    end
  end

  describe '.get_line_contents' do
    let(:line_contents) {'    2    4    6   10'}
    it 'builds a line with the expected string' do
      expect(TableGenerator.get_line_contents(2,[2,3,5])).to eql(line_contents)
    end
  end

  describe '.get_header_line_contents' do
    let(:header_line) {'         2    3    5'}
    it 'builds a line with the expected header string' do
      expect(TableGenerator.get_header_line_contents([2,3,5])).to eql(header_line)
    end
  end

  describe '.dump_table' do
    let(:table_contents) {/.*2.*3.*5\n.*2.*4.*6.*10\n.*3.*6.*9.*15\n.*5.*10.*15.*25/}
    it 'builds a string with expected contents' do
      expect{TableGenerator.dump_table([2,3,5])}.to output(table_contents).to_stdout
    end
  end
end