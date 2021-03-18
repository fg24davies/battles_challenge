
require 'sinatra'

class Battle < Sinatra::Base
  set :session_secret, "here be dragons"
  enable :sessions 
  
  get '/' do
    erb :index
  end
  
  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    redirect '/play'
  end
  
  get '/play' do
    @player_1 = session[:player_1] 
    @player_2 = session[:player_2] 
    @player_1_hit_points = 50
    @player_2_hit_points = 50
    erb :play
  end 

end 