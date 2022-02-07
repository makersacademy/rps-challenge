require './lib/game'

describe Game do
  let(:p1) { double :player }

  describe '#initialize' do
    it 'gets initialised with one player' do
      game = Game.create(p1)
      expect(game.player_1).to eq p1
    end
  end

  describe '#self.instance' do
    it 'returns the game instance' do
      game = Game.create(p1)
      expect(Game.instance).to eq game
    end
  end

  describe '#print_message' do
    it 'prints the RPS message' do
      game = Game.create(p1)
      expect(game.print_message).to eq "Enter Rock, Paper or Scissors"
    end
  end

  # this is now stubbing randomness
  describe '#computer_turn' do
  let(:computer) { double :computer }
    it 'returns the computer choice' do
      allow(computer).to receive(:new).and_return( @computer )
      allow(@computer).to receive(:choose).and_return( "Rock" )
      game = Game.create(p1, computer)
      expect(game.computer_turn).to eq "Rock"
    end
  end

  describe '#outcome' do
    let(:judge) { double :judge }
    it 'returns a text outcome' do
      game = Game.create(p1)
      allow(Judge).to receive(:new) { judge }
      allow(judge).to receive(:winner) { "Computer wins" }
      expect(game.outcome).to eq "Computer wins"
    end
  end

  describe '#player_turn' do
    it 'returns a text outcome' do
      game = Game.create(p1)
      expect(game.player_turn("Rock")).to eq "Rock"
    end
  end

end
