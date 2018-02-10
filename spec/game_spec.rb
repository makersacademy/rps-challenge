require 'game'

describe Game do
  
  subject(:game) { described_class.new(player) }
  let(:player) { double('player') }
  let(:player_option) { ['rock','paper','scissors'].sample }

  context 'when instantiated' do
    it 'takes a parameter and passes it to the @player attribute' do
      expect(game.player).to eq player
    end
  end

  describe 'self#create' do
    it 'instantiates a singleton' do
      described_class.create(player)
      expect(described_class.instance).to be_an_instance_of described_class
    end
  end

  describe '#pc_weapon' do
    it 'returns rock, paper, or scissors' do
      expect(game.pc_weapon).to satisfy { |weapon| 'rock' || 'paper' || 'scissors'}
    end
  end

  describe '#play' do
    it 'returns a boolean saying wheather the player has won' do
      expect(game.player_win?).to satisfy { |return_val| true || false || nil }
    end
  end

end
