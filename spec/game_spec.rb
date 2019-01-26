require 'game'

describe Game do

  let(:player_1)        { double(:player_1, name: "Player 1") }
  let(:player_2)        { double(:player_2, name: "Player 2") }
  let(:one_player_game) { described_class.create(player_1) }
  let(:two_player_game) { described_class.new(player_1, player_2) }

  describe 'Setting up the game' do
    it 'Accepts two players as arguments' do
      expect(described_class).to respond_to(:new).with(2).arguments
    end

    it 'Defaults to a 1 player game against the computer if only one player is passed on initialization' do
      expect(one_player_game.player_2.name).to eq "Computer"
    end
  end

  describe 'Making a move' do
    it 'Will declare the result a draw if both players make the same move' do
      player_1.move("Rock")
      player_2.move("Rock")
      expect(player_1.score).to eq 0
      expect(player_1.score).to eq 0
    end
  end

  describe 'Computer making a move' do
    it "In a 1 player game the computer makes a random move when the winner is generated" do
      expect(one_player_game.player_2).to receive(:make_random_move)
      one_player_game.calculate_winner
    end
  end

  describe 'Keeping track of rounds' do
    it 'Will be round 0 when the game begins' do
      expect(one_player_game.round).to eq 0
    end
  end
end
