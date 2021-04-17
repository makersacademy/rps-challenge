require 'game'

describe Game do
  let(:player_double) { double(:player, name: "matt") }
  let(:subject) { Game.new(player_double) }

  context '#initialize' do
    it 'can initialize with a player' do
      expect(subject.player).to eq(player_double)
    end

    it 'has stored moves' do
      expect(subject.moves).to include("rock" && "paper" && "scissors")
    end
  end

  context '#take_turn' do
    it 'lets players choose a move' do
      expect(subject).to respond_to(:take_turn).with(2).arguments
    end

    it 'can return a winning message' do
      allow(subject).to receive(:rock_move).and_return("matt's Rock beats computers' Scissors!")
      expect(subject.take_turn(player_double, "rock")).to eq("matt's Rock beats computers' Scissors!")
    end

    it 'can return a losing message' do
      allow(subject).to receive(:rock_move).and_return("matt's Rock loses to computers' Paper")
      expect(subject.take_turn(player_double, "rock")).to eq("matt's Rock loses to computers' Paper")
    end

    it 'it can return an invalid move' do
      expect(subject.take_turn(player_double, "fish")). to eq("Invalid move")
    end
  end
end
