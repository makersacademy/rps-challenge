require 'game'

describe Game do
  let(:player) { double('Player', name: 'Willow', choice: 'Scissors')}
  let(:computer) { double('Computer', name: 'Computer', choice: 'Paper')}
  let(:winning_computer) { double('Computer', name: 'Computer', choice: 'Rock')}
  let(:solo_game) { described_class.new(player, computer) }
  let(:lost_solo_game) { described_class.new(player, winning_computer) }

  context '#find_winner' do
    it 'sets winner variable to player' do
      solo_game.find_winner
      expect(solo_game.winner).to eq "Willow"
    end

    it 'sets winner variable to computer' do
      lost_solo_game.find_winner
      expect(lost_solo_game.winner).to eq "Computer"
    end
  end

end
