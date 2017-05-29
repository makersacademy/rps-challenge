require 'win'

describe Win do
  subject(:win) { described_class.new }
  let(:player1) { double(:player1, hand: 'Rock', wins_from: ['Scissors', 'Lizard'], wins: true, name: 'Jerry') }
  let(:player2) { double(:player2, hand: 'Scissors', wins_from: ['Paper', 'Lizard'], wins: false, name: 'Dave') }

   describe '#find_winner' do
    it 'shows whose hand has won' do
      expect { win.find_winner(player1, player2) }.to change { win.winner }.to 'Jerry wins!'
    end
  end
end

