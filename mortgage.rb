class Mortgage
  attr_reader :home_value, :current_apr, :loan_duration

  def initialize(home_value, current_apr, loan_duration)
    @home_value = home_value
    @current_apr = current_apr
    @loan_duration = loan_duration
  end
end

