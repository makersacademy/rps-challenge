require 'player'

describe Player do
  subject(:ollie) { described_class.new('Ollie') }

  describe '.name' do
    it "returns the player's name" do
      expect(ollie.name).to eq('Ollie')
    end
  end

  describe '.choice' do
    it 'can set the move to the user selection and return it' do
      ollie.choice = 'Rock'
      expect(ollie.choice).to eq('Rock')
    end
  end
end
