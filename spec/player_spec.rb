require 'player'

describe Player do

let(:player) { double :player }
let(:subject) { described_class.new(player) }
let(:weapons) { [:rock, :paper, :scissors] }
let(:double_rock) { 'rock' }

  describe '#Game' do
    it 'should respond to weapon' do
      expect(subject).to respond_to(:choose_weapon).with(1).argument
    end
  end

  describe '#weapon' do
    context 'given an incorrect choice' do
      it 'should raise an error'do
        expect{ subject.choose_weapon('ho') }.to raise_error(RuntimeError)
      end
    end

    context 'when given the choice' do
      it 'should set weapon' do
        expect(subject.choose_weapon('rock')).to eq(:rock)
      end
    end
  end
end
