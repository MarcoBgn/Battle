require 'sinatra/base'
require 'player.rb'

class Heroes < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :play
  end

  get '/attack' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    erb :attack
  end

  run! if app_file == $0
end
