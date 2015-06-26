require 'player'

describe Player do

    it { is_expected.to respond_to :name }

    it 'can choose rock, paper or scissors' do
      expect(subject).to respond_to(:choose).with(1).argument
    end

    it 'has a choice attribute' do
      expect(subject).to respond_to(:own_choice)
    end

    it 'can receive rock, paper or scissors' do
      expect(subject).to respond_to(:receive).with(1).argument
    end

    it 'knows if it has won or lost' do
      expect(subject).to respond_to(:won?)
    end

    describe 'choose' do
      it 'records which out of rock, paper or scissors it has chosen' do
        subject.choose('rock')
        expect(subject.own_choice).to eq 'rock'
      end
    end

    describe 'receive' do
      it 'records which out of rock, paper or scissors the opponent has chosen' do
        subject.receive('paper')
        expect(subject.opponent_choice).to eq 'paper'
      end
    end

    describe 'won?' do
      it 'records whether the player has won or lost' do
        subject.choose('rock')
        subject.receive('scissors')
        expect(subject.won?).to eq true
      end

    end
end
