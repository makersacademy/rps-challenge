require 'player'

describe Player do
  let(:karen) { Player.new("Karen") }

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

  describe 'initialize' do
    it "creates an instance of the Player class" do
      expect(karen.instance_of? Player).to be true
    end

    it "records the name variable" do
      expect(karen.name).to eq "Karen"
    end
  end
end
