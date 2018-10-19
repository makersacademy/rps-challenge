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
    it 'returns winner when passed rock and scissors' do
      expect(subject.win_logic("rock", "scissors")).to eq "winner"
    end
    it 'returns loser when passed rock and paper' do
      expect(subject.win_logic("rock", "paper")).to eq "loser"
    end
    it 'returns loser when passed paper and scissors' do
      expect(subject.win_logic("paper", "scissors")).to eq "loser"
    end
    it 'returns draw when passed paper and scissors' do
      expect(subject.win_logic("paper", "paper")).to eq "draw"
    end
  end
end
  # allow(subject).to receive(:weather).and_return("sunny")
