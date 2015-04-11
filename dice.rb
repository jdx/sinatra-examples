require 'sinatra'

get '/' do
  erb :home
end

get '/dice_roll' do
  roll = rand(1..6)
  "<h1>your</h1> roll: <b>#{roll}</b>"
end