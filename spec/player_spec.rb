require 'player'

describe Player do
  subject(:brian) {describe_class.new('Brian')}

  describe '#name' do
    it 'returns the name' do
      expect(brian.new).to eq 'Brian'
    end
  end
  
end
