module UtilityMethods
  def is_prime_number?(value)
    divisor = []

    (1..value).each do |number|
      if value % number == 0
        divisor << number
      end
    end
    divisor.length > 2 ? false : true
  end
end