require 'sinatra'

get '/roll' do
  @comp_roll = rand(1..6)
  @user_roll = rand(1..6)

  erb :result
end
