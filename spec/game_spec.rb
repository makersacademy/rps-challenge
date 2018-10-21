require 'game'

describe Game do
  let(:player1) { double(:player1, name: 'John', choice: 'Rock') }
  let(:player2) { double(:player2, choice: 'Paper') }
  let(:player3) { double(:player3, choice: 'Scissors') }
  let(:game) { described_class.new(player1, player2) }
  context "initialize" do
    it "accepts a human player" do
      expect(game.player1).to eq player1
    end
  end
  context '#result' do
    it 'rock beats scissors' do
      expect(game.result(player1.choice, player3.choice)).to eq "John wins!"
    end
    it 'paper beats rock' do
      expect(game.result(player1.choice, player1.choice)).to eq "It's a hard earned draw."
    end
    it 'scissors beats paper' do
      expect(game.result(player1.choice, player2.choice)).to eq "John loses!"
    end
  end
end
