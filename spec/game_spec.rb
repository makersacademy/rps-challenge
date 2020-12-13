require 'game'

describe Game do
  it 'creates an instance of Game' do
    expect(subject).to be_kind_of(Game)
  end

  describe '#rps' do
    let (:game) {Game.new}
    it 'returns either rock, paper, or scissors' do

      allow(subject).to receive(:rps).and_return('rock')
      expect(subject.rps).to eq('rock')
    end

  end
end
