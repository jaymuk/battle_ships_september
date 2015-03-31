require 'sinatra/base'
# Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

class BattleShips < Sinatra::Base

# GAME = Game.new
  set :views, Proc.new { File.join(root,"..", "views")}
  get '/' do
    erb :index
  end

  get '/new_game' do
    'What s your name?'
    erb :game_start
  end  

  get '/start' do
    @player = params[:name]
    # @game = Game.new(Player.new('Guillaume'), Player.new('Caron'))
    # @player_one_name = @game.player_1.name
    erb :take_a_shot
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
