module UtilityMethods
  def prime_number?(value)
    divisor = []

    return false if value == 0 || value == 1
    (1..value).each do |number|
      divisor << number if (value % number).zero?
    end
    divisor.length <= 2
  end
end
