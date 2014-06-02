require 'minitest'
require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/pride'

require_relative 'mortgage'

describe Mortgage do
  describe "#loan_months" do
    it "calcuates the loan duration in months" do
      mortgage = Mortgage.new(300000, 0.05, 5, 30)
      mortgage.loan_months.must_equal 360
    end
  end
end
