require 'player'

describe Player do

let(:subject) { described_class.new }
let(:weapons) { ['rock', 'paper', 'scissors'] }
let(:rock) {'rock'}


  describe '#Game' do
    it 'should respond to choose_weapon' do
      expect(subject).to respond_to(:choose_weapon).with(1).argument
    end
  end

  describe '#initialize' do
    context 'should create an array'do
      it 'containing weapons' do
        expect(subject.weapons).to eq(weapons)
      end
    end
  end

  describe '#choose_weapon' do
    context 'given an incorrect choice' do
      it 'should raise an error'do
        expect{ subject.choose_weapon('ho') }.to raise_error(RuntimeError)
      end
    end

    context 'when given the choice' do
      it 'should set choosen_weapon' do
        expect(subject.choose_weapon('rock')).to eq(rock)
      end
    end
  end


end
