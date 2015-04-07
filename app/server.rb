require 'sinatra/base'
Dir[File.dirname(__FILE__) + '../lib/*.rb'].each {|file| require file}

class RPS < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/game' do
    @player = Player.new(params[:name])
    @player.choice = params[:choice]
    @cpu = cpu
    @game = Outcome.new(@player, cpu)
    erb :game
  end

  post '/result' do
    erb :result
  end

  def cpu
    choice = %w(rock paper scissors).sample
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
