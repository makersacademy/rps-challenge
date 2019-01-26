require './app/models/player'

describe Player do

  describe '#defaults' do
    it 'initializes with a name attribute' do
      test = Player.new('Test Name')
      expect(test.name).to eq 'Test Name'
    end
  end

  

end
