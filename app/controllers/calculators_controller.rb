class CalculatorsController < ApplicationController
  # For square form
  def square_form
    render "calculators/square_form"
  end

  # For square results (GET request)
  def square_results
    @number = params[:number].to_f
    @square = @number ** 2
    render "calculators/square_results"
  end

  # For square root form
  def square_root_form
    render "calculators/square_root_form"
  end

  # For square root results (GET request)
  def square_root_results
    @number = params[:user_number].to_f
    @square_root = Math.sqrt(@number)
    render "calculators/square_root_results"
  end

  # For payment form
  def payment_form
    render "calculators/payment_form"
  end

  # For payment results (POST request)
  def payment_results
    @apr = params[:user_apr].to_f / 100 / 12
    @years = params[:user_years].to_f
    @principal = params[:user_pv].to_f
    @months = @years * 12
    @monthly_payment = (@principal * @apr) / (1 - (1 + @apr) ** -@months)
    render "calculators/payment_results"
  end

  # For random form
  def random_form
    render "calculators/random_form"
  end

  # For random results (POST request)
  def random_results
    @min = params[:user_min].to_f
    @max = params[:user_max].to_f
    @random_number = rand(@min..@max)
    render "calculators/random_results"
  end
end
