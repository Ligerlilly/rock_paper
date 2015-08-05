require 'sinatra'
require 'sinatra/reloader'
require './lib/beats?'

get '/' do
  erb(:index)
end

get '/game' do
  @game_boolean = (params['player_one']).beats?(params['player_two'])
  if @game_boolean == true
    @winner = 'Player one is the winner!'
  elsif @game_boolean == false
    @winner = 'Player two is the winner!'
  else
    @winner = "<a href='/'>Try again</a>"
  end
  erb(:game)
end

get '/robot' do

  erb(:robot)
end

get '/robot_game' do
  robot = rand(3)+1
  if robot == 1
    robot = 'rock'
  elsif robot == 2
    robot = 'scissors'
  elsif robot == 3
    robot = 'paper'
  end
  @game_boolean = params['player_one'].beats?(robot)
  if @game_boolean == true
    @winner = 'Player one is the winner!'
    @user_input = params['player_one']
    @robot_input = robot
  elsif @game_boolean == false
    @winner = 'Robot is the winner!'
    @user_input = params['player_one']
    @robot_input = robot
  else
    @winner = "<a href='/robot'>Try again</a>"
  end
  erb :robot_game
end
