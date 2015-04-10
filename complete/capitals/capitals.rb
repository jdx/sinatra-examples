require 'sinatra'

states = ["Oregon", "Washington", "California"]
capitals = {
  "Oregon" => "Salem",
  "Washington" => "Olympia",
  "California" => "Sacramento",
}

get '/' do
  @state = states.shuffle().first()
  erb :guess
end

get '/make_answer' do
  puts params.inspect()
  user_guess = params[:user_guess]
  @state = params[:state]
  @time = Time.now
  if user_guess == capitals[@state]
    erb :right_answer
  else
    erb :wrong_answer
  end
end
