module TableGenerator

  # There is not much going on here.  The module expects a sorted array of numbers
  # and will dump out a multiplication table based on what it finds in the array.
  # The field width gets calculated by squaring the final array element to find
  # the largest value that needs to be accommodated by the formatting.  There's
  # one method to get the header line contents, and one method to get the
  # contents of each line.  The main dump_table method uses these to print the table.
  #
  # Note that I'm specifically not trying to optimize the table dump here.  The
  # table result will be symmetrical along the diagonal, and one optimization that might
  # be useful depending on usage context would be to reduce the number of multiplications
  # required to produce the table by storing the previous results.  So you're trading
  # computation for memory and implementation complexity.
  @field_width = 3
  class << self; attr_reader :field_width; end

  def self.dump_table(in_array_of_numbers)
    self.prepare_table_field_width(in_array_of_numbers)
    puts (get_header_line_contents(in_array_of_numbers))
    in_array_of_numbers.each { |prime|
      puts (get_line_contents(prime, in_array_of_numbers))
    }
  end

  def self.get_header_line_contents(in_array_of_numbers)
    line = sprintf("%#{@field_width}s", '')
    in_array_of_numbers.each { |number|
      line = line + sprintf("%#{@field_width}i", number)
    }
    line
  end

  def self.get_line_contents(in_line_value, in_array_of_numbers)
    line = sprintf("%#{@field_width}i", in_line_value)
    in_array_of_numbers.each { |number|
      line = line + sprintf("%#{@field_width}i", in_line_value * number)
    }
    line
  end

  def self.prepare_table_field_width(in_array_of_numbers)
    @field_width = (in_array_of_numbers.last**2).to_s.length + 2
  end
end