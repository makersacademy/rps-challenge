require 'game'

describe Game do

  subject(:game) { described_class.new(player, computer) }
  let(:computer) { double :computer, select_random_move: "Scissors"}
  let(:player) { double :player }

  it 'has a player' do
    expect(game.player).to eq player
  end

  it 'has a computer player' do
    expect(game.computer_player).to eq computer
  end

  describe '#player_won' do
    it 'increases the points of the player' do
      expect(player).to receive(:increase_points)
      game.player_won
    end
  end

  describe '#comp_won' do
    it 'increases the points of the computer' do
      expect(computer).to receive(:increase_points)
      game.comp_won
    end
  end
  # describe '#player_wins' do
  #   it 'increases the players points if they win the round' do
  #     expect(player).to receive(:increase_points)
  #     game.player_wins
  #   end
  # end
  #
  # describe '#computer_wins' do
  #   it 'increases the computer points if they win the round' do
  #     expect(computer).to receive(:increase_points)
  #     game.computer_wins
  #   end
  # end

  describe '#computers_move' do
    it 'outputs the computers selected move for that round' do
      game.set_computer_move
      expect(game.computer_move).to eq "Scissors"
    end
  end
  #
  # describe '#outcome_of_round' do
  #   it 'outputs the winner of the round' do
  #     expect()
  #   end
  # end
end
