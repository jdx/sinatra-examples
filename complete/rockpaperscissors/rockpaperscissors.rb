require 'sinatra'

get '/' do
  erb :start
end

get '/play/:weapon' do
  @user = params[:weapon]
  @computer = ['rock', 'paper', 'scissors'].sample
  if @user == "rock"
    if @computer == "rock"
      @result = :tie
    elsif @computer == "paper"
      @result = :lost
    elsif @computer == "scissors"
      @result = :won
    end
  elsif @user == "paper"
    if @computer == "rock"
      @result = :won
    elsif @computer == "paper"
      @result = :tie
    elsif @computer == "scissors"
      @result = :lost
    end
  elsif @user == "scissors"
    if @computer == "rock"
      @result = :lost
    elsif @computer == "paper"
      @result = :won
    elsif @computer == "scissors"
      @result = :tie
    end
  end

  erb :result
end
