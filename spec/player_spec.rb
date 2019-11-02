require 'player'

describe Player do

  subject(:amy) { Player.new('Amy') }

  describe 'name' do
    it 'returns the name' do
      expect(amy.name).to eq 'Amy'
    end
  end

  describe 'weapon chooser' do
    it 'chooses a weapon' do
      amy.weapons("rock")
      expect(amy.weapons("rock")).to eq 'rock'
    end
  end

  describe 'player has made a choice' do

    it 'has selected a choice' do
      amy.weapons("rock")
      expect(amy.choice).to eq 'rock'
    end

  end

end
