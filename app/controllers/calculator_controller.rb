class CalculatorController < ApplicationController

  def new_square
    render({ :template => "new_templates/square"})
  end

  def new_root
    render({ :template => "new_templates/root"})
  end

  def new_random
    render({ :template => "new_templates/random"})
  end

  def new_payment
    render({ :template => "new_templates/payment"})
  end

  def results_square
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 2
    render({ :template => "result_templates/square"})
  end

  def results_root
    @the_num = params.fetch("users_number").to_f
    @the_result = @the_num ** 0.5
    render({ :template => "result_templates/root"})
  end

  def results_random
    @the_min = params.fetch("users_min").to_f
    @the_max = params.fetch("users_max").to_f
    @the_result = rand(@the_min..@the_max)
    render({ :template => "result_templates/random"})
  end

  def results_payment
    @the_apr = params.fetch("users_apr").to_f
    @the_years = params.fetch("users_years").to_f
    @the_principal = params.fetch("users_principal").to_f

    @r = @the_apr/(100*12)
    @n = n = @the_years*12
    @numerator = @the_principal*@r
    @denominator = 1 - (1 + @r)**(-@n)

    @the_result = @numerator/@denominator

    render({ :template => "result_templates/payment"})
  end
end
