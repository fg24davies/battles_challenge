require 'sinatra'
require_relative './lib/player.rb'
require_relative './lib/game.rb'


class Battle < Sinatra::Base
  set :session_secret, "here be dragons"
  # enable :sessions 
  
  get '/' do
    erb :index
  end
  
  post '/names' do
    player_1 = Player.new(params[:player_1])
    player_2 = Player.new(params[:player_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end
  
  get '/play' do
    @game = $game
    erb :play
  end 

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    erb :attack
  end 
end 
