require 'taketurn'

describe Taketurn do
  subject(:taketurn) { described_class.new(variables) }
  let(:variables) { {"player_name" => "Joe", "player_option" => :rock, "computer_option" => :scissors} }

  describe "#player_name" do
    it "returns the name of the player" do
      expect(taketurn.player_name).to eq "Joe"
    end
  end

  describe "#win?" do
    it "returns true if player chooses rock and computer chooses scissors" do
      expect(turn.win?).to eq true
    end
  end

end
