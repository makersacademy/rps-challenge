require 'player'

describe Player do
  let(:player) { described_class.new("Michael") }

  describe "#name" do
    it 'allows player to enter their name' do
      expect(player.name).to eq("Michael")
    end
  end

  describe "reset" do
    it 'allows player to reset their move after match ends' do
      player.choose("Rock")
      player.reset
      expect(player.move).to eq(nil)
    end
  end

end
