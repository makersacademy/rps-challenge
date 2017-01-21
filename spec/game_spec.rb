require 'game'

describe Game do
  subject(:game) { described_class.new(choice)}
  let(:choice) {double :choice}
  subject(:game_rock) { described_class.new("rock")}
  subject(:game_paper) { described_class.new("paper")}
  subject(:game_scissors) { described_class.new("scissors")}
  let(:rock) {"rock"}

  it 'creates an instance of Game class' do
    expect(game).to be_a(Game)
  end

  describe '#won?' do
    it 'rock beats scissors' do
      allow(game_rock).to receive(:throw).and_return("scissors")
      expect(game_rock.won?).to eq("won")
    end
    it 'scissors beats paper' do
      allow(game_scissors).to receive(:throw).and_return("paper")
      expect(game_scissors.won?).to eq("won")
    end
    it 'paper beats rock' do
      allow(game_paper).to receive(:throw).and_return("rock")
      expect(game_paper.won?).to eq("won")
    end
    it 'returns "lose" if lost' do
      allow(game_paper).to receive(:throw).and_return("scissors")
      expect(game_paper.won?).to eq("lose")
    end
    it 'returns "tie" if tie' do
      allow(game_rock).to receive(:throw).and_return("rock")
      expect(game_rock.won?).to eq("tie")
    end
  end
end
