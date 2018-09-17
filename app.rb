require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number**2}"
  end

  get '/say/:number/:phrase' do
    p = params[:phrase]
    n = params[:number].to_i
    "#{p * n}"
  end

  get '/say/:w1/:w2/:w3/:w4/:w5' do
    w1 = params[:w1]
    w2 = params[:w2]
    w3 = params[:w3]
    w4 = params[:w4]
    w5 = params[:w5]
    "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end

  get '/:op/:n1/:n2' do
    op = params[:op]
    n1 = params[:n1].to_f
    n2 = params[:n2].to_f
    case op
    when "add"
      "#{(n1 + n2).to_i}"
    when "subtract"
      "#{(n1 - n2).to_i}"
    when "multiply"
      "#{(n1 * n2).to_i}"
    when "divide"
      "#{(n1 / n2).to_i}"
    end
  end

end
