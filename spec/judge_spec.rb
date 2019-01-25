require 'judge'

# Intitializes with two player names and their choices
# Determines winner
describe Judge do
  it 'initializes with one player and their choice' do
    expect { judge = Judge.new("a", "Rock") }.to_not raise_error
  end

  it 'initializes with two players and their choices' do
    expect { judge = Judge.new("a", "Rock", "b", "Scissors") }.to_not raise_error
  end

  describe "#ment" do
    it "returns the name of the winner based on the players' choices" do
      judge = Judge.new("a", "Rock", "b", "Scissors")
      expect(judge.ment).to eq 'a'
      judge = Judge.new("a", "Scissors", "b", "Rock")
    end

    it 'returns "neither" if draw' do
      judge = Judge.new("a", "Rock", "b", "Rock")
      expect(judge.ment).to eq 'neither'
    end
  end
end
