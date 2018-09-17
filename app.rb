require_relative 'config/environment'
require "pry"
class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @user_name = params[:name]
    @user_name = @user_name.reverse!
    "#{@user_name}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @num = @num * @num
    "#{@num}"
  end

  get "/say/:number/:phrase" do
    @phrase = params[:phrase]
    @number = params[:number].to_i
      "#{@phrase * @number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @sum = @number1 + @number2
    @sub = @number1 - @number2
    @multi = @number1 * @number2
    @divi = @number1 / @number2
    "#{@sum} #{@sub} #{@multi} #{@divi}"
  end

end
