require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game.rb'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end
  
  post '/names' do
    $game = Game.new(
      Player.new(params[:player_1]),
      Player.new(params[:player_2])
    )
    redirect '/play'
  end

  get '/play' do 
    @game = $game
    @arena_message = session[:arena_message]
    @turn_message = $game.turn_message
    erb :play
  end

  post '/attack' do
    session[:arena_message] = $game.attack_message
    $game.attack(damage: 10)
    # session[:turn_message] = $game.turn_message
    redirect '/play'
  end

  run! if app_file == $0
end
