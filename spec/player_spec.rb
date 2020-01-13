require 'player'

describe Player do
  subject(:anne) { Player.new("Anne") }

  describe '#name' do
    it 'returns the name' do
      expect(anne.name).to eq("Anne")
    end
  end
end
