require 'game'

describe Game do
  let(:player1) { double(:player1, name: 'Gareth') }
  let(:player2) { double(:player2, name: 'Computer') }
  subject(:game) { described_class.new(player1,player2) }
  let(:player_1) { double(:player_1, player_1_move: 'paper')}
  let(:player_2) {double(:player_2, player_2_move:'rock')}
  # before do
  #   allow(Kernel).to receive(:rand) {10}
  #   allow(player2).to receive(:receive_damage)
  #   allow(player1).to receive(:heal)
  # end

  describe '#player_1_move' do
    it 'returns players chosen move' do
      expect(player1).to receive(:move)
      game.player_1_move('rock')
    end
  end

  describe '#player_2_move' do
    it "return the computers move" do
    expect(["rock", "paper", "scissors"]).to include(game.player_2_move)
  end
  end

  describe '#player_1' do
    it 'returns the player' do
      expect(game.player_1).to eq player1
    end
  end

  describe '#winner' do
    it 'returns who won' do
      expect(game.winner(player_1,player_2)).to eq "Ahh unlucky the Computer beat you!"
    end

    it "allows the player to win" do
      expect(subject.winner("paper", "rock")).to eq "Congratulations Gareth, you win!"
    end

    it "allows the computer to win" do
      expect(subject.winner("rock", "paper")).to eq "Ahh unlucky the Computer beat you!"
    end

  end
end
