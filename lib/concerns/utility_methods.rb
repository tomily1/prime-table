module UtilityMethods
  def is_prime_number?(value)
    divisor = []

    (1..value).each do |number|
      divisor << number if value % number == 0
    end
    divisor.length <= 2
  end
end
