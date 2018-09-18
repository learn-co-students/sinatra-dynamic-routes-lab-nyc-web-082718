require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    reversed_name = params[:name].reverse
  end

  get '/square/:number' do
    squared_number = (params[:number].to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    phrase = params[:phrase]
    repeated_string = ""
    n.times do
      repeated_string += "#{phrase}\n"
    end
    repeated_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      answer = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      answer = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      answer = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      answer = params[:number1].to_i / params[:number2].to_i
    end
    answer.to_s
  end

end
