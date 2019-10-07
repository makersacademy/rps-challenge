require 'game'

describe Game do

  let(:game) { Game.new('Jane') }
  let(:subject) { double(:subject) }

  before do
    game.choices << "Paper"
    game.choices << "Rock"
  end

  describe '#initialize' do
    it 'initializes with a player' do
      expect(game.player_1).to eq 'Jane'
    end
  end

  describe '#player_1_choice' do
    it "returns player 1's choice" do
      expect(game.player_1_choice).to eq 'paper'
    end
  end

  describe '#player_2_choice' do
    it "returns player 2's choice" do
      expect(game.player_2_choice).to eq 'rock'
    end
  end

  describe '#result' do
    it 'returns the winner of the game' do
      allow(subject).to receive(:evaluate).with(@choices).and_return 'player_1_win'
      expect(game.result).to eq 'The winner is Jane'
    end
  end

end
