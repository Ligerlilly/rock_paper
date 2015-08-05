require 'sinatra'
require 'sinatra/reloader'
require './lib/beats?'

get '/' do
  erb(:index)
end

get '/game' do
  @game_boolean = params['player_one'].beats?(params['player_two'])
  if @game_boolean
    @winner = 'Player one is the winner!'
  elsif @game_boolean == false
    @winner = 'Player two is the winner!'
  else
    @winner = "<a href='/'>Try again</a>"
  end
  erb(:game)
end
