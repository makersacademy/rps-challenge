require 'player'

describe Player do

  subject(:player) { described_class.new('Alaan') }

  it "stores a player's name" do
    expect(player.name).to eq('Alaan')
  end

  describe "#selection" do
    context "when I select rock" do
      it "returns rock" do
        expect(player.player_choice(:rock)).to eq(:rock)
      end
    end

    context "when I select paper" do
      it "returns paper" do
        expect(player.player_choice(:paper)).to eq(:paper)
      end
    end

    context "when I select scissors" do
      it "returns scissors" do
        expect(player.player_choice(:scissors)).to eq(:scissors)
      end
    end

    context "when I select an invalid choice" do
      it "raises an error" do
        expect{player.player_choice(:invalid_choice)}.to raise_error 'Invalid choice'
      end
    end
  end
end
