require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class Battle < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_1_name]), Player.new(params[:player_2_name]))
    redirect '/play'
  end

  get '/play' do
    @game = $game
    @game.current_turn
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.current_turn[:player])
    erb :attack
  end
  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end
