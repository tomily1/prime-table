require 'spec_helper'

describe PrimeTable do

  before do
    $prime_table = PrimeTable.new
  end

  describe "prime_number? method" do
    it "returns true for prime number" do
      expect($prime_table.prime_number?(5)).to eq true
    end

    it "returns false for non prime numbers" do
      expect($prime_table.prime_number?(4)).to eq false
      expect($prime_table.prime_number?(1)).to eq false
      expect($prime_table.prime_number?(0)).to eq false
      expect($prime_table.prime_number?(32)).to eq false
    end
  end

  describe "prime_multiplicand_array method" do

    it "returns appropriate number of rows and columns for multiplicands" do
      expect($prime_table.prime_multiplicand_array(5).length).to eq 5
      expect($prime_table.prime_multiplicand_array(25).length).to eq 25
      expect($prime_table.prime_multiplicand_array(200).length).to eq 200
    end
  end

  describe "Command Line Output" do
    it "should print the exact formatted table" do
      capture_stdout { $prime_table.display_prime_table(2) }.should eq "\n\n\n                PRIME NUMBERS MULTIPLICATION TABLE\n\n\n  X     2     3    \n\n  2  |  4     6    \n\n  3  |  6     9    \n\n"
      capture_stdout { $prime_table.display_prime_table(3) }.should eq "\n\n\n                PRIME NUMBERS MULTIPLICATION TABLE\n\n\n  X     2     3     5    \n\n  2  |  4     6     10   \n\n  3  |  6     9     15   \n\n  5  |  10    15    25   \n\n"
    end
  end
end
