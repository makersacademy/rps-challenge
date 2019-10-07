require 'player'

RSpec.describe Player do
  subject(:sherif) { Player.new("Sherif") }

  describe 'name' do
    it 'returns name' do
      expect(sherif.name).to eq("Sherif")
    end
  end
end
