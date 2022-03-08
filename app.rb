require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    @player1 = params[:player_1]
    @player2 = params[:player_2]
    erb :play
  end

  run! if app_file == $0
end
