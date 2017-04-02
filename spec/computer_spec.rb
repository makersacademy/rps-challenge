require 'computer'

describe Computer do

  subject(:computer) {described_class.new}

  describe'#initialize' do
    it 'has a selection within weapon options' do
      expect([:rock, :paper, :scissors]).to include(computer.selection)
    end
  end

  describe '#reselect' do
    it 'assigns value to weapon' do
      computer.reselect
      expect([:rock, :paper, :scissors]).to include(computer.selection)
    end
  end

end
