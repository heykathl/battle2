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
    @message = session[:message]
    erb :play
  end

  post '/attack' do
    session[:message] = "#{$game.player1.name} attacked #{$game.player2.name}!"
    $game.attack(player: $game.player2, damage: 10)
    redirect '/play'
  end

  run! if app_file == $0
end
