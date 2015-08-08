require 'score_calculator'


describe Score_Calculator do

let(:dummy_class) { Class.new { include Score_Calculator } }
let(:game) { dummy_class.new }
let(:tie_move) { {:player_1 => 'rock', :player_2 => 'rock'} }
let(:win_move) { {:player_1 => 'rock', :player_2 => 'scissors'} }

  describe '#rank' do
    it 'has a method called rank' do
      expect(game).to respond_to(:rank).with(1).argument
    end
    it 'returns surviving players if more than one player submits same weapon' do
      expect(game.rank tie_move).to match_array tie_move.keys
    end

    xit 'returns the winning player if there is a winner' do
    end
  end


end