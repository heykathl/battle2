require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end
  
  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    redirect '/play'
  end

  get '/play' do 
    @player1 = $player_1.name
    @player2 = $player_2.name
    @message = session[:message]
    @player1_hp = $player_1.hp
    @player2_hp = $player_2.hp
    erb :play
  end

  post '/attack' do
    session[:message] = "#{$player_1.name} attacked #{$player_2.name}!"
    Game.new.attack(player: $player_2, damage: 10)
    redirect '/play'
  end



  run! if app_file == $0
end
