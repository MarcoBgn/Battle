require 'sinatra/base'
require 'capybara/dsl'

class Battle < Sinatra::Base
  get '/' do
    erb :names
  end
  
  post '/main' do
    @player1 = params['player_1_name']
    @player2 = params['player_2_name']
    erb :main
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
