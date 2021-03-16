require 'sinatra'
set :session_secret, "here be dragons"

get '/' do
  'Hello!'
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/form' do 
  erb(:index)
end 
