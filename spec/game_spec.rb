require "game"

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  let (:player1) { double(:player, name: "Player 1") }
  let (:player2) { double(:computerplayer, name: "Computer") }

  # context 'knows the players' do
  #
  #   it 'who is player 1' do
  #     expect(game.player1).to eq player1
  #   end
  #
  #   it 'who is player 2' do
  #     expect(game.player2).to eq player2
  #   end
  # end

  context '#name_of' do
    it "returns the name of a player" do
      expect(game.name_of(player1)).to eq player1.name
    end
  end

  context '#attack' do
    it { should respond_to(:attack).with(1).argument }

    # it 'rock should beat scissors' do
    #   allow(player2).to receive(:move).and_return(:scissors)
    #   expect(game.attack(:rock)).to eq true
    # end
    #
    # it 'paper should beat rock' do
    #   allow(player2).to receive(:move).and_return(:rock)
    #   expect(game.attack(:paper)).to eq true
    # end
    #
    # it 'scissors should beat paper' do
    #   allow(player2).to receive(:move).and_return(:paper)
    #   expect(game.attack(:scissors)).to eq true
    # end

  end
  context '#action' do
    it 'should return the action selected' do
      allow(player1).to receive(:action).and_return(:rock)
      expect(game.action(:rock)).to eq :rock
    end
  end

end
