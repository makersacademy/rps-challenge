require 'game'

describe Game do
  let(:rock) { double(:rock, name: 'rock') }
  let(:paper) { double(:paper, name: 'paper') }
  let(:scissors) { double(:scissors, name: 'scissors') }
  subject { described_class.new('Tom', [rock, paper, scissors]) }

  describe '.instance' do
    it 'returns the latest instance of Game class' do
      subject
      expect(Game.instance).to eq(subject)
    end
  end

  describe '#player_name' do
    it 'returns the name of the player' do
      expect(subject.player_name).to eq('Tom')
    end
  end

  describe '#select_player_choice' do
    context 'when a player has selected an option (as a string)' do
      it 'returns the correct Object' do
        expect(subject.select_player_choice('rock')).to eq(rock)
      end
    end
  end

  describe '#set_ai_choice' do
    context 'when the AI needs to choose' do
      it 'returns a random GameItem from the options' do
        allow_any_instance_of(Array).to receive(:sample) { rock }
        expect(subject.set_ai_choice).to eq(rock)
      end
    end
  end

  describe '#decide_winner' do
    it 'sets the AI Choice' do
      allow(rock).to receive(:beats?)
      expect { subject.decide_winner(rock) }.to change { subject.ai_choice }
    end

    it 'calls beats? on the player choice to decide result' do
      expect(rock).to receive(:beats?)
      subject.decide_winner(rock)
    end
  end
end
