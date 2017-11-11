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
    context 'when player beats the AI' do
      it 'returns true' do
        allow(subject).to receive(:set_ai_choice) { scissors }
        expect(subject.decide_winner(rock)).to be(true)

        allow(subject).to receive(:set_ai_choice) { rock }
        expect(subject.decide_winner(paper)).to be(true)

        allow(subject).to receive(:set_ai_choice) { paper }
        expect(subject.decide_winner(scissors)).to be(true)
      end
    end

    context 'when AI beats the player' do
      it 'returns false' do
        allow(subject).to receive(:set_ai_choice) { paper }
        expect(subject.decide_winner(rock)).to be(false)

        allow(subject).to receive(:set_ai_choice) { scissors }
        expect(subject.decide_winner(paper)).to be(false)

        allow(subject).to receive(:set_ai_choice) { rock }
        expect(subject.decide_winner(scissors)).to be(false)
      end
    end

    context 'when it results in a draw' do
      it 'returns 0' do
        allow(subject).to receive(:set_ai_choice) { rock }
        expect(subject.decide_winner(rock)).to be(0)

        allow(subject).to receive(:set_ai_choice) { paper }
        expect(subject.decide_winner(paper)).to be(0)

        allow(subject).to receive(:set_ai_choice) { scissors }
        expect(subject.decide_winner(scissors)).to be(0)
      end
    end
  end
end
