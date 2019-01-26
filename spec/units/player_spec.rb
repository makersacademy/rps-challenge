require 'player'

RSpec.describe Player do

  subject(:brooke) { Player.new("Brooke") }

  describe '#name' do
    it 'returns its name' do
      expect(brooke.name).to eq("Brooke")
    end
  end

end
