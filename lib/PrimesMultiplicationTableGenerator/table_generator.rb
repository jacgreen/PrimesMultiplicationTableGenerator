module PrimesMultiplicationTableGenerator
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

    ##
    # Dump a multiplication table to STDOUT.
    #
    # All the writing to STDOUT happens in this method, other helpers are used to
    # build the line contents.
    #
    # @param [Array] array_of_numbers the numbers that will be multiplied together to form the line contents of the table
    def self.dump_table(array_of_numbers: array_of_numbers)
      self.prepare_table_field_width(array_of_numbers: array_of_numbers)
      puts (get_header_line_contents(array_of_numbers: array_of_numbers))
      array_of_numbers.each { |prime|
        puts (get_line_contents(line_value: prime, array_of_numbers: array_of_numbers))
      }
    end

    ##
    # Get the contents of the header line
    #
    # @param [Array] array_of_numbers the numbers that will comprise the header line
    # @return [String] a string containing the header line
    def self.get_header_line_contents(array_of_numbers:)
      line = sprintf("%#{@field_width}s", '')
      array_of_numbers.each { |number|
        line = line + sprintf("%#{@field_width}i", number)
      }
      line
    end

    ##
    # Get the contents for a particular table line
    #
    # @param [Integer] line_value the base operand that is multiplied together with
    # each element in the array_of_numbers to form a table cell value
    # @param [Array] array_of_numbers the list of numbers to multiply with the line_value
    # to form a table cell value
    # @return [String] the line contents
    def self.get_line_contents(line_value:, array_of_numbers:)
      line = sprintf("%#{@field_width}i", line_value)
      array_of_numbers.each { |number|
        line = line + sprintf("%#{@field_width}i", line_value * number)
      }
      line
    end

    ##
    # Figure out how large a cell in the table needs to be
    #
    # This method initializes a member value that is used by the other helpers, but returns nothing.
    #
    # @param [Array] array_of_numbers the list of numbers that will comprise each axis of the table
    def self.prepare_table_field_width(array_of_numbers:)
      @field_width = (array_of_numbers.last**2).to_s.length + 2
    end
  end
end

