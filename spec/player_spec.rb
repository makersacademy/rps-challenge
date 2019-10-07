require 'player'
require 'game'


describe Player do
  subject(:francesca) { Player.new('Francesca') }


  describe '#name' do
    it 'returns name of player' do
      expect(francesca.name).to eq('Francesca')
    end
  end

  describe '#make_move' do
    it 'selects weapon' do
      expect(subject.make_move('rock')).to eq('rock')
    end
  end
  # selects weapon option
  # compares against computers weapon


end
