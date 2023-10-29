class ZebraController < ApplicationController
  
  def square
    
    render({ :template => "templates/square"})
  end
  
  def root
  
    render({ :template => "templates/square_root" })
  end

  def payment
    render({ :template => "templates/payment" })
  end

  def random
    render({ :template => "templates/random" })
end
def random_results
  @user_min = params.fetch("user_min").to_i
    @user_max = params.fetch("user_max").to_i
    @random_number = rand(@user_min..@user_max).to_f
  render({ :template => "templates/random_results" })
end
def payment_results
  @the_APR = params.fetch("user_apr").to_f
  @the_years = params.fetch("user_years").to_f
  @the_principal = params.fetch("user_pv").to_f
  
  apr = @the_APR / 100
  r = apr / 12
  numerator = r * @the_principal
  denominator = 1 - (1 + r)**-(@the_years*12)
  @the_payment = numerator / denominator
  render({ :template => "templates/payment_results" })
end
def square_results
  @the_num = params.fetch("user_number").to_f
  @the_result = params.fetch("user_number").to_f * params.fetch("user_number").to_f
  render({ :template => "templates/square_results" })
end
def root_results
  @the_num = params.fetch("user_number").to_f
  @the_result = Math.sqrt(@the_num)
  render({ :template => "templates/square_root_results" })
end
end
