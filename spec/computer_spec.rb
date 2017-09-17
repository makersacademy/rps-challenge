require 'computer'

describe Computer do
  subject(:computer) { Computer.new }

  describe '#choice' do
    choices = [:rock, :paper, :scissors]
    it 'returns a weapon choice' do
      expect(choices).to include(computer.choice)
    end
  end
end
