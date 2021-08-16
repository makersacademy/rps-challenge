require './lib/game'

describe Game do
  let(:rock_rock) { double :rock_rock }
  let(:winner_class) { double :winner_class, new: rock_rock }
  let(:game) { described_class.new('rock', winner_class: winner_class) }

  # computer move and 

  describe '#return_message' do

    it 'is a draw' do
      allow(rock_rock).to receive(:winner).and_return('draw')
      puts game.return_message
      expect(game.return_message).to eq "It's a draw!"
    end
    
  end
  # takes two moves and returns the winner

end