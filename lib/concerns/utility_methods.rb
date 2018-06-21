module UtilityMethods
  def prime_number?(value)
    divisor = []

    return false if [0, 1].include?(value)
    (1..value).each do |number|
      divisor << number if (value % number).zero?
    end
    divisor.length <= 2
  end
end
