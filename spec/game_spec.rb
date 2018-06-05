require './lib/game'

describe Game do
  subject(:game) { described_class.new(options) }
  let(:options) { { "player_name" => "Lucy", "player_option" => :paper, "computer_option" => :rock } }

  describe '#player_name' do
    it 'returns players name' do
      expect(game.player_name).to eq "Lucy"
    end
  end

  describe '#player_option' do
    it 'returns players option' do
      expect(game.player_option).to eq :paper
    end
  end
  describe '#computer_option' do
    it 'returns computers option' do
      expect(game.computer_option).to eq :rock
    end
  end

  context 'end game' do
    describe '#win?' do
      it 'returns true if player_option is :paper and computer_option is :rock' do
        expect(game.win?).to eq true
      end
    end
  end

end
