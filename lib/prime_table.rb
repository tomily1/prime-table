require_relative './concerns/utility_methods.rb'
class PrimeTable
  include UtilityMethods

  def prime_multiplicand_array(multiplicand_length)
    value = 2
    multiplicands = []

    while multiplicands.length < multiplicand_length
      multiplicands << value if prime_number?(value)
      value += 1
    end

    multiplicands
  end

  def display_prime_table(value)
    rows = prime_multiplicand_array(value)
    columns = rows

    print "\n\n\n"
    print '                PRIME NUMBERS MULTIPLICATION TABLE'
    print "\n\n\n"

    print '  X    '
    columns.each { |column| print format(' %-4d ', column) }
    print "\n\n"

    rows.each do |row|
      print format('  %-2d | ', row)
      columns.each do |column|
        result = column * row
        print format(' %-4d ', result)
      end
      print "\n\n"
    end
  end
end
