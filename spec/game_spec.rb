require 'game'

describe Game do

  subject { Game.new(player, weapon) }

  let(:player) { double :player }
  let(:weapon) { double :weapon }

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

    it 'result is saved' do
      subject.shoot('rock', 'paper')
      expect(subject.result).to eq 'lose'
    end
  end

end
