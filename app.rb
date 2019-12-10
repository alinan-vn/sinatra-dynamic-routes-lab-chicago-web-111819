require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Literally anything"
  end

  get '/reversename/:name' do 
    reversed = params[:name].reverse
    "#{reversed}"
  end

  get '/square/:number' do
    squared = params[:number].to_i * params[:number].to_i
    "#{squared}"
  end

  get '/say/:number/:phrase' do 
    "#{params[:phrase]}" * params[:number].to_i
    # params[:number].to_i.times{ "#{params[:phrase]}"}
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    a = params[:word1]
    b = params[:word2]
    c = params[:word3]
    d = params[:word4]
    e = params[:word5]
    s = " "
    "#{a+s+b+s+c+s+d+s+e}."
  end

  get '/:operation/:number1/:number2' do
    uno = params[:number1].to_i
    dos = params[:number2].to_i
    if params[:operation] == "add"
      "#{uno + dos}"
    elsif params[:operation] == "subtract"
      "#{uno - dos}"
    elsif params[:operation] == "multiply"
      "#{uno * dos}"
    elsif params[:operation] == "divide"
      "#{uno / dos}"
    end
  end

end