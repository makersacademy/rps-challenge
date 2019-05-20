require 'player'

describe Player do
  subject(:francesca) { Player.new('Francesca') }

  describe '#name' do
    it 'returns name of player' do
      expect(francesca.name).to eq('Francesca')
    end
  end

  describe '#weapon' do
    it 'selects weapon' do
      expect(subject.weapon).to eq('rock')
    end
  end
  # selects weapon option
  # compares against computers weapon


end
