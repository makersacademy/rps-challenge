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
    subject(:win_game) { game }
    subject(:lose_game) { described_class.new(lose_options) }
    subject(:draw_game) { described_class.new(draw_options) }

    let(:lose_options) { { "player_name" => "Lucy", "player_option" => :scissors, "computer_option" => :rock } }
    let(:draw_options) { { "player_name" => "Lucy", "player_option" => :scissors, "computer_option" => :scissors } }

    describe '#win?' do
      it 'returns true if player_option is :paper and computer_option is :rock' do
        expect(win_game.win?).to eq true
      end
    end
    describe '#lose?' do
      it 'returns true if player_option is :scissors and computer_option is :rock' do
        expect(lose_game.lose?).to eq true
      end
    end
    describe '#draw?' do
      it 'returns true if player_option is :scissors and computer_option is :scissors' do
        expect(draw_game.draw?).to eq true
      end
    end
  end

end
