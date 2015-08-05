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
  else
    @winner = 'Player two is the winner!'
  end
  erb(:game)
end
