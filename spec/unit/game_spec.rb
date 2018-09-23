require 'game'

describe Game do
  let(:player) { double('Player', name: 'Willow', choice: 'scissors') }
  let(:computer) { double('Computer', name: 'Computer', choice: 'paper') }
  let(:winning_computer) { double('Computer', name: 'Computer', choice: 'rock') }
  let(:draw_computer) { double('Computer', name: 'Computer', choice: 'scissors') }
  let(:solo_game) { described_class.new(player, computer) }
  let(:lost_solo_game) { described_class.new(player, winning_computer) }
  let(:draw_solo_game) { described_class.new(player, draw_computer) }

  context '#find_winner' do
    it 'sets winner variable to player' do
      solo_game.find_winner
      expect(solo_game.winner).to eq "Willow"
    end

    it 'sets winner variable to computer' do
      lost_solo_game.find_winner
      expect(lost_solo_game.winner).to eq "Computer"
    end

    it 'should set a draw when both choose the same choice' do
      draw_solo_game.find_winner
      expect(draw_solo_game.winner).to eq "Draw"
    end
  end

end
