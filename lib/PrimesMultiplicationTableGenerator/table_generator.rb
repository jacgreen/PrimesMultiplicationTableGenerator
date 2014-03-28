class TableGenerator

  def initialize
    @field_width = 1
  end
  def dump_table

  end

  def get_header_line

  end

  def get_line_contents

  end

  def field_width
    return @field_width
  end

  def set_table_field_width(in_array_of_numbers)
    @field_width = (in_array_of_numbers.last**2).to_s.length + 2
  end
end