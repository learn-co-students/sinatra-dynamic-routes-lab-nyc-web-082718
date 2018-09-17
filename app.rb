require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    n = params[:number].to_i
    (n*n).to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    case operation
    when "add"
      result = n1 + n2
    when "subtract"
      result = n1 - n2
    when "multiply"
      result = n1 * n2
    when "divide"
      result = n1 / n2
    end
    result.to_s
  end

end
