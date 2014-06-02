class Mortgage
  attr_reader :home_value, :current_apr, :loan_duration
  def initialize(home_value, down_payment_perc, current_apr, loan_duration)
    @home_value = home_value
    @current_apr = current_apr.to_f
    @loan_duration = loan_duration
    @down_payment_perc = down_payment_perc
  end




  ############################## Monthly Payment ##############################

  def monthly_payment
  #monthly payment formula
  r = monthly_apr
  n = loan_months
  p = loan_principal

    monthly_payment = ((p * r) * ((1+r)**n)) / (((1+r)**n)-1)
    monthly_payment
  end

  def loan_months
    #number of years * 12
    @loan_duration * 12
  end

  def monthly_apr
    #current_apr / 12
    @current_apr / 12 / 100
  end

  def down_payment
    #home-value * down_payment
    @home_value * @down_payment_perc
  end

  def loan_principal
    #home-value * down_payment
    @home_value - down_payment
  end


  ############################## Total Interest ##############################

  def total_interest_paid
    #total payment - loan principle
    total_payment - loan_principal
  end


  def total_payment
      #monthly payment * loan_months
      monthly_payment * loan_months
  end
end
