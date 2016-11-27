require 'player'

describe Player do
  subject(:mike) { described_class.new('mike', 'rock') }

  describe '#name' do
    it "returns the name" do
      expect(mike.name.capitalize).to eq 'Mike'
    end
  end

end
