require 'sinatra/base'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1_name] = params[:player1_name]
    session[:player2_name] = params[:player2_name]
    redirect '/play'
  end

  get '/play' do
  	@player1_name = session[:player1_name]
  	@player2_name = session[:player2_name]
    @confirm = session[:confirm]
    @player1_points = 0
    @player2_points = 0
  	erb(:play)
  end

  post '/attack' do
    @player1_name = session[:player1_name]
    @player2_name = session[:player2_name]
    session[:confirm] = "#{@player1_name} attacks #{@player2_name}"
    redirect '/play'
  end

  run! if app_file == $0
end
