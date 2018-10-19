require 'game'

describe Game do
  subject(:game) { described_class.new(player) }
  # subject(:game) { described_class.new(player_1, player_2) }
  let(:player) { double :player, :name => "Clare" }

  describe "Computer plays" do
    it 'returns a random rock, paper, or scissors' do
      expect(subject.random).to eq('rock').or(eq('paper')).or(eq('scissors'))
    end
  end

  describe "what beats what" do
    it 'returns rock when passed rock and scissors' do
      allow(subject).to receive(:random).and_return("scissors")
      # p subject.random
      expect(subject.win_logic("rock", "scissors")).to eq "human"
    end
  end
end
  # allow(subject).to receive(:weather).and_return("sunny")
