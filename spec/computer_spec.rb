require 'computer'

describe Computer do
  subject(:hal) { Computer.new }

  describe '#weapon' do
    it 'generates a random weapon' do
      expect([:Rock, :Paper, :Scissors]).to include(hal.weapon)
    end
  end

end