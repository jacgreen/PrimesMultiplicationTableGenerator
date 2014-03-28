require 'spec_helper'

describe '#set_table_field_width' do

  it 'should set the field with member in the module' do
    generator = TableGenerator.new()
    generator.set_table_field_width([1,10])
    expect(generator.field_width).to eq(5)
  end
end