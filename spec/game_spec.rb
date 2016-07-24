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

  context '#action' do
    it 'should return the action selected' do
      option = :rock
      allow(player1).to receive(:move).and_return(:rock)
      expect(game.action(player1, option)).to eq option
    end
  end

  context '#winner shows the player won if' do

    it 'rock beats scissors' do
      allow(player1).to receive(:action).and_return(:rock)
      allow(player2).to receive(:action).and_return(:scissors)
      expect(game.winner).to eq game.name_of(player1)
    end

    it 'paper should beat rock' do
      allow(player1).to receive(:action).and_return(:paper)
      allow(player2).to receive(:action).and_return(:rock)
      expect(game.winner).to eq game.name_of(player1)
    end

    it 'scissors should beat paper' do
      allow(player1).to receive(:action).and_return(:scissors)
      allow(player2).to receive(:action).and_return(:paper)
      expect(game.winner).to eq game.name_of(player1)
    end
  end

  context '#winner shows player2 won if' do

    it 'rock defeated by paper' do
      allow(player1).to receive(:action).and_return(:rock)
      allow(player2).to receive(:action).and_return(:paper)
      expect(game.winner).to eq game.name_of(player2)
    end

    it 'paper defeated by scissors' do
      allow(player1).to receive(:action).and_return(:paper)
      allow(player2).to receive(:action).and_return(:scissors)
      expect(game.winner).to eq game.name_of(player2)
    end

    it 'scissors defeated by rock' do
      allow(player1).to receive(:action).and_return(:scissors)
      allow(player2).to receive(:action).and_return(:rock)
      expect(game.winner).to eq game.name_of(player2)
    end
  end

  context '#winner shows draw' do
    it 'if both select the same action' do
      allow(player1).to receive(:action).and_return(:rock)
      allow(player2).to receive(:action).and_return(:rock)
      expect(game.winner).to eq "Draw"
    end
  end

end
