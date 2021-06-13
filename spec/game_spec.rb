require 'game'

describe Game do
  let(:player_1) { double('player') }
  let(:player_2) { double('player') }
  subject(:game) { described_class.new(player_1, player_2) }

  it { is_expected.to respond_to(:results) }
  
  context 'P1 picks rock' do
    before do
      pick_rock(player_1)
    end

    it 'can win' do
      pick_scissors(player_2)
      expect(subject.results).to eq 'Win'
    end

    it 'can draw' do
      pick_rock(player_2)
      expect(subject.results).to eq 'Draw'
    end

    it 'can lose' do
      pick_paper(player_2)
      expect(subject.results).to eq 'Lose'
    end
  end

  context 'P1 picks paper' do
    before do
      pick_paper(player_1)
    end

    it 'can win' do
      pick_rock(player_2)
      expect(subject.results).to eq 'Win'
    end

    it 'can draw' do
      pick_paper(player_2)
      expect(subject.results).to eq 'Draw'
    end

    it 'can lose' do
      pick_scissors(player_2)
      expect(subject.results).to eq 'Lose'
    end
  end

  context 'P1 picks scissors' do
    before do
      pick_scissors(player_1)
    end

    it 'can win' do
      pick_paper(player_2)
      expect(subject.results).to eq 'Win'
    end

    it 'can draw' do
      pick_scissors(player_2)
      expect(subject.results).to eq 'Draw'
    end

    it 'can lose' do
      pick_rock(player_2)
      expect(subject.results).to eq 'Lose'
    end
  end

  private

  def pick_rock(player)
    allow(player).to receive(:move).and_return('rock')
  end

  def pick_paper(player)
    allow(player).to receive(:move).and_return('paper')
  end

  def pick_scissors(player)
    allow(player).to receive(:move).and_return('scissors')
  end
end
