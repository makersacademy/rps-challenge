require 'game'
require 'pry'

describe Game do

  subject(:game) { described_class.new(player) }
  let(:player) { "Junot" }
  it 'has a player' do
    expect(game.player).to eq "Junot"
  end

  describe "#hal_move" do
    it 'can choose a random move' do
      expect(["rock", "paper", "scissors"]).to include(game.hal_choice)
    end
  end

  context 'draw' do
    describe '#outcome' do
      let(:player_move) { "rock" }
      let(:hal_move) { "rock" }
      it 'declares a draw' do
        expect(game.outcome).to eq "Draw"
      end
    end
  end

  context 'player wins' do
    describe '#outcome' do
      let(:player_move) { "rock" }
      let(:hal_move) { "scissors" }
      it 'declares player the winner' do
        expect(game.outcome).to eq "You win!"
      end
    end
  end

  context 'hal wins' do
    describe '#outcome' do
      let(:player_move) { "rock" }
      let(:hal_move) { "paper" }
      it 'declares Hal the winner' do
        expect(game.outcome).to eq "You lose!"
      end
    end
  end

end
