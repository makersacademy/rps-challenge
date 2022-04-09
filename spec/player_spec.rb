require 'player'

describe Player do
  let(:player) { described_class.new("Michael") }

  describe "#name" do
    it 'allows player to enter their name' do
      expect(player.name).to eq("Michael")
    end
  end

end
