require 'player'

describe Player do 
  context 'new' do
    it 'has a name' do
      expect(subject.name).to_not be_nil
    end
  end
end
