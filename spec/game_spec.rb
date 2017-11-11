require 'game'

describe Game do
  let(:rock) { double(:rock, name: 'rock', beats: 'scissors') }
  let(:paper) { double(:paper, name: 'paper', beats: 'rock') }
  let(:scissors) { double(:scissors, name: 'scissors', beats: 'paper') }
  subject { described_class.new('Tom', [rock, paper, scissors]) }

  describe '.instance' do
    it 'returns the latest instance of Game class' do
      subject
      expect(Game.instance).to eq(subject)
    end
  end

  describe '#player' do
    it 'returns the name of the player' do
      expect(subject.player).to eq('Tom')
    end
  end

  describe '#select_player_choice' do
    context 'when a player has selected an option (as a string)' do
      it 'returns the correct Object' do
        expect(subject.select_player_choice('rock')).to eq(rock)
      end
    end
  end

  describe '#ai_choice' do
    context 'when the AI needs to choose' do
      it 'returns a random GameItem from the options' do
        allow_any_instance_of(Array).to receive(:sample) { rock }
        expect(subject.ai_choice).to eq(rock)
      end
    end
  end
end
