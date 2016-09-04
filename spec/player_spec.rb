require 'player'

describe Player do
  subject(:lawrence) {Player.new('Lawrence', 'rocks')}
  subject(:computer) {Player.new}

  describe '#name' do
    it 'returns the players name' do
      expect(lawrence.name).to eq 'Lawrence'
    end

    it 'players have a default name' do
      expect(computer.name).to eq 'Computer'
    end

    # it 'players default random choice' do
    #   expect(computer.choice).to eq('rock'||'paper'||'scissors')
    # end
  end

  describe '#choice' do
    it 'returns the players choice' do
      expect(lawrence.choice).to eq 'rocks'
    end
  end

end
