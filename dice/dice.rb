require 'sinatra'

get '/' do
  erb :home
end

get '/dice_roll' do
  @user_roll = rand(1..6)
  @comp_roll = rand(1..6)
  erb :roll
end