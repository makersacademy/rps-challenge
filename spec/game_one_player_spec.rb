require 'game_one_player'

describe GameOnePlayer do
  subject(:game) { described_class.new(choice)}
  let(:choice) { :choice}
  subject(:game_rock) { described_class.new(rock)}
  subject(:game_paper) { described_class.new(paper)}
  subject(:game_scissors) { described_class.new(scissors)}
  subject(:game_spock) { described_class.new(spock)}
  subject(:game_lizard) { described_class.new(lizard)}
  let(:rock) {:rock}
  let(:paper) {:paper}
  let(:scissors) {:scissors}
  let(:spock) {:spock}
  let(:lizard) {:lizard}

  it 'creates an instance of Game class' do
    expect(game).to be_a(GameOnePlayer)
  end

  describe '#won?' do
    it 'rock beats scissors' do
      allow(game_rock).to receive(:throw).and_return(:scissors)
      expect(game_rock.won?).to eq(:won)
    end
    it 'rock beats lizard' do
      allow(game_rock).to receive(:throw).and_return(:lizard)
      expect(game_rock.won?).to eq(:won)
    end

    it 'scissors beats paper' do
      allow(game_scissors).to receive(:throw).and_return(:paper)
      expect(game_scissors.won?).to eq(:won)
    end
    it 'scissors beats lizard' do
      allow(game_scissors).to receive(:throw).and_return(:lizard)
      expect(game_scissors.won?).to eq(:won)
    end

    it 'paper beats rock' do
      allow(game_paper).to receive(:throw).and_return(:rock)
      expect(game_paper.won?).to eq(:won)
    end
    it 'paper beats spock' do
      allow(game_paper).to receive(:throw).and_return(:spock)
      expect(game_paper.won?).to eq(:won)
    end

    it 'lizard beats paper' do
      allow(game_lizard).to receive(:throw).and_return(:paper)
      expect(game_lizard.won?).to eq(:won)
    end
    it 'lizard beats spock' do
      allow(game_lizard).to receive(:throw).and_return(:spock)
      expect(game_lizard.won?).to eq(:won)
    end

    it 'spock beats rock' do
      allow(game_spock).to receive(:throw).and_return(:rock)
      expect(game_spock.won?).to eq(:won)
    end
    it 'spock beats scissors' do
      allow(game_spock).to receive(:throw).and_return(:scissors)
      expect(game_spock.won?).to eq(:won)
    end

    it 'returns "lose" if lost' do
      allow(game_paper).to receive(:throw).and_return(:scissors)
      expect(game_paper.won?).to eq(:lose)
    end
    it 'returns "tie" if tie' do
      allow(game_rock).to receive(:throw).and_return(:rock)
      expect(game_rock.won?).to eq(:tie)
    end
  end
end
