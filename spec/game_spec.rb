require 'game'

describe Game do

  subject { Game.new(weapon1, weapon2) }

  let(:weapon1) { double :weapon1 }
  let(:weapon2) { double :weapon2 }

  it 'works' do
    expect(subject.class).to eq described_class
  end

  describe '#shoot' do
    it 'returns win if user wins' do
      expect(subject.shoot('rock', 'scissors')).to eq :win
    end

    it 'returns lose if user loses' do
      expect(subject.shoot('rock', 'paper')).to eq :lose
    end
    it 'returns tie if user ties' do
      expect(subject.shoot('rock', 'rock')).to eq :tie
    end

    it 'result is saved' do
      subject.shoot('rock', 'paper')
      expect(subject.result).to eq :lose
    end
  end

end
