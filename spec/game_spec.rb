require 'game'

describe Game do

  subject { Game.new(player)}

  let(:player) { double :player}

  it 'works' do
    expect(subject.class).to eq described_class
  end

  describe '#shoot' do
    it 'returns win if user wins' do
      expect(subject.shoot('rock', 'scissors')).to eq 'win'
    end

    it 'returns lose if user loses' do
      expect(subject.shoot('rock', 'paper')).to eq 'lose'
    end
    it 'returns tie if user ties' do
      expect(subject.shoot('rock', 'rock')).to eq 'tie'
    end
  end

end
