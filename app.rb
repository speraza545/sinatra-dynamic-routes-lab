require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do 
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do 
    @number_to_i = params[:number].to_i 
    "#{@number_to_i * @number_to_i}"
  end

  get '/say/:number/:phrase' do 
    @phrase = params[:phrase]
    @number_of_times = params[:number].to_i
    @string = []
    @number_of_times.times do
      @string << @phrase
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @string = [params[:word1], " ", params[:word2], " ", params[:word3], " ", params[:word4], " ", params[:word5], "."]

    @string
  end

  get '/:operation/:number1/:number2' do 
    @number1_to_i = params[:number1].to_i
    @number2_to_i = params[:number2].to_i
    if params[:operation] == "divide"
      "#{@number1_to_i / @number2_to_i}"
    elsif params[:operation] == "multiply"
      "#{@number1_to_i * @number2_to_i}"     
    elsif params[:operation] == "add"
        "#{@number1_to_i + @number2_to_i}"
    elsif params[:operation] == "subtract"
        "#{@number1_to_i - @number2_to_i}"
    else 
      "Sorry there must be a typo, please try again"
    end
  end

end