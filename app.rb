require 'sinatra'
require 'sinatra/reloader'
require './lib/beats?'

get '/' do
  erb(:index)
end

get '/game' do
  game(params['player_one'], params['player_two'])
  erb(:game)
end

get '/robot' do
  erb(:robot)
end

get '/robot_game' do
  robot_game(params['player_one'])
  erb :robot_game
end
