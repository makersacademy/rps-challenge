require 'player'

describe Player do
  subject(:user) { Player.new('Adam') }

  describe '#name' do
    it 'returns the name' do
      expect(user.name).to eq 'Adam'
    end
  end
end 
