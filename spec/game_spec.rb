require "game"

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let (:player1) { double(:player, name: "Player 1") }
  let (:player2) { double(:computerplayer, name: "Computer") }
  context '#name_of' do
    it "returns the name of a player" do
      expect(game.name_of(player1)).to eq player1.name
    end
  end

  context '#attack' do
    it { should respond_to(:attack).with(1).argument }

    it 'rock should beat scissors' do
      allow(player2).to receive(:move).and_return(:scissors)
      expect(game.attack(:rock)).to eq true
    end

    it 'paper should beat rock' do
      allow(player2).to receive(:move).and_return(:rock)
      expect(game.attack(:paper)).to eq true
    end

    it 'scissors should beat paper' do
      allow(player2).to receive(:move).and_return(:paper)
      expect(game.attack(:scissors)).to eq true
    end

  end



end
