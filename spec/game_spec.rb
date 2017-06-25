require 'game'

describe Game do

  let(:player) { double :player }
  subject(:game) { described_class.new(args) }
  let(:args) { { "player_name" => "Alessandro", "player_choice" => :paper, "opponent_choice" => :rock } }
  describe '#player_name' do
    it 'gets player name' do
      expect(game.player_name).to eq "Alessandro"
    end
  end

  describe "#player_choice" do
    it "returns player choice" do
      expect(game.player_choice).to eq :paper
    end
  end

  describe "#opponent_choice" do
    it "returns opponent choice" do
      expect(game.opponent_choice).to eq :rock
    end
  end

  describe "#win?" do
    it "returns true if player_choice is :paper and opponent_choice is :rock" do
      expect(game.win?).to eq true
    end
  end

  describe "#lose?" do
      let(:args) { { "player_name" => "Alessandro", "player_choice" => :rock, "opponent_choice" => :paper } }
    it "returns true if player_choice is :rock and opponent_choice is :paper" do
      expect(game.lose?).to eq true
    end
  end

  describe "#draw?" do
    let(:args) { { "player_name" => "Alessandro", "player_choice" => :rock, "opponent_choice" => :rock } }
    it "returns true if player_choice is :rock and opponent_choice is :rock" do
      expect(game.draw?).to eq true
    end
  end
end
