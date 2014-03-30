module TableGenerator

  @field_width = 1
  @format_string = "%#{@field_width}s\t"
  class << self; attr_reader :field_width; attr_reader :format_string; end

  def self.dump_table(in_array_of_numbers)

    puts (get_header_line_contents(in_array_of_numbers))
    in_array_of_numbers.each { |prime|
      puts (get_line_contents(prime, in_array_of_numbers))
    }

  end

  def self.get_header_line_contents(in_array_of_numbers)
    line = sprintf("%#{in_array_of_numbers.last.to_s.length + 1}s", '')
    in_array_of_numbers.each { |number|
      line = line + sprintf(@format_string, number)
    }
    line
  end

  def self.get_line_contents(in_line_value, in_array_of_numbers)
    line = sprintf("%#{in_array_of_numbers.last.to_s.length + 1}i", in_line_value)
    in_array_of_numbers.each { |number|
      line = line + sprintf(@format_string, in_line_value * number)
    }
    line
  end

  def self.set_table_field_width(in_array_of_numbers)
    @field_width = (in_array_of_numbers.last**2).to_s.length + 2
    @format_string = "%#{@field_width}i"
  end
end