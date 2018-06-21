require_relative 'prime_table.rb'
module Command
  def self.execute
    input = nil

    until input == 'no'
      p "PRIME NUMBERS MULTIPLICATION TABLE"

      table = PrimeTable.new

      p "Please input the multiplication table size"

      table_size = STDIN.gets.strip.to_i

      table.display_prime_table(table_size)

      p "Press any key to create another table otherwise, press No to exit"
      input = STDIN.gets.strip.downcase
    end

    p "exiting......."
  end
end

if ARGV[0] == 'execute'
  Command.execute
else
  p 'invalid command'
end