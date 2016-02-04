require 'sinatra/base'
require 'capybara/dsl'

class Battle < Sinatra::Base
  
  enable :sessions
  set :sessions, :expire_after => 5
  
  get '/' do
    erb :names
  end
  
  post '/main' do
    session['player_1_name'] = params['player_1_name']
    session['player_2_name'] = params['player_2_name']
    redirect '/play'
  end
  
  get '/play' do
    p session
    @player1 = session['player_1_name']
    @player2 = session['player_2_name']
    erb :main
  end
  
  get '/attack' do
    @player1 = session['player_1_name']
    @player2 = session['player_2_name']
    erb :attack
  end

  run! if app_file == $0
end
