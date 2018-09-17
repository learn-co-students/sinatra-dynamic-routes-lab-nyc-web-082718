require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    phrase = ""
    (params[:number].to_i).times do
      phrase += "#{params[:phrase]}"
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    if operation == "add"
      solution = number1 + number2
    elsif operation == "subtract"
      solution = number1 - number2
    elsif operation == "multiply"
      solution = number1 * number2
    else operation == "divide"
      solution = number1 / number2
    end
    solution.to_s
  end

end
