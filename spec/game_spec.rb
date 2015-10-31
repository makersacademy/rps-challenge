require 'game'

describe Game do

  subject(:player) {described_class.new('Mattia')}
  
  context 'Create a new player' do
    it 'has a new player' do
      expect(subject.name).to eq 'Mattia'
    end
  end
end
