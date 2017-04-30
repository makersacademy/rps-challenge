require 'game'

describe Game do

  subject(:game) { described_class.new(options) }
  let(:options) { {"player_name" => "Daniel", "player_tool" => :rock, "computer_tool" => :scissors} }


  describe '#player_name' do
    it 'returns player name' do
      expect(game.player_name).to eq 'Daniel'
    end
  end

  describe '#player_tool' do
    it 'returns players tool' do
      expect(game.player_tool).to eq :rock
    end
  end

  describe '#computer_tool' do
    it 'returns computers shape' do
      expect(game.computer_tool).to eq :scissors
    end
  end

  describe 'result' do
    subject(:win_game) { game }
    subject(:lose_game) { described_class.new(lose_options) }
    subject(:draw_game) { described_class.new(draw_options) }

    let(:lose_options) { { "player_name" => "Daniel", "player_tool" => :rock, "computer_tool" => :paper } }
    let(:draw_options) { { "player_name" => "Daniel", "player_tool" => :rock, "computer_tool" => :rock } }

    describe '#win?' do
      it 'returns true if player_tool is rock and computer_tool is scissors' do
        expect(win_game.win?).to eq true
      end
    end

    describe '#lose?' do
      it 'returns true if player_tool is rock and computer_tool is paper' do
        expect(lose_game.lose?).to eq true
      end
    end

    describe '#draw?' do
      it 'returns true if player_tool is rock and computer_tool is rock' do
        expect(draw_game.draw?).to eq true
      end
    end
  end
end
