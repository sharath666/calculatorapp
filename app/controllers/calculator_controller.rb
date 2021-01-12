class CalculatorController < ApplicationController
  def index
  end



  def performance
  
    operator = params[:operator]

    num1 = params[:num1].to_i
    num2 = params[:num2].to_i

   result =  calculator(num1,num2,operator)
  
    render json: result
  end

  private
  def calculator num1 , num2, operator

    case operator
    when "add"
      num1+num2
    when "minus"
      num1 -num2

    when  "multiple"
      num1* num2

    when "divide"
      num1/num2
    else
      puts "invalid operator"
  end
end
end
