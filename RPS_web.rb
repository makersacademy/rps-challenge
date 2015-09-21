require 'sinatra/base'
require_relative './lib/game.rb'


class RPSWeb < Sinatra::Base
  enable :sessions

  get '/' do
    $game = Game.new
    erb :index
  end

  get '/newgame' do
    erb :newgame
  end

  get '/gamepage' do
    @commentary = ["AND IT'S A CLEAN LEFT HOOK, HIS OPPONENT'S KNOCKED STRAIGHT OUT OF THE RING, THERE'S NO COMING BACK FROM THIS ONE",
                   "REFEREE'S TRYING TO BREAK THIS ONE UP, THAT'S A MEAN UPPERCUT! HE CAN'T SEE STRAIGHT! IT'S ALL OVER!",
                   "WATCH OUT, WATCH OUT, WATCH OU- RKO! RKO FROM OUTTA NOWHERE! RANDY ORTON!",
                   "AND THERE IT IS! DELIVERED! ASK YOU SHALL RECEIVE! WE SAW THIS ALL ON MONDAY NIGHT!",
                   "And there they ar- WAIT A MINUTE WAIT A MINUTE RANDY ORTON WITH THE RKO!",
                   "OFF THE TOP ROPE, IT'S OFF THE TOP ROPE, NO NO, OH MY LOR-",
                   "HALFWAY ACROSS THE RING! THERE'S ABSOLUTLEY NO WAY! HE'S GOING FOR AIRBORNE LADIES AND GENTLEMEN! YOU GOTTA BE KIDDING ME! OH HOW DID HE DO IT! OH MY GOD! HE GOT HIM IN AN RKO IN MIDAIR!"]
    @visitor = params[:name]
    @choice_1 = params[:choice_1].to_sym if params[:choice_1]
    erb :gamepage
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
