require 'game'

describe Game do

  let(:player_1) { double :player }
  let(:player_2) { double :player }
  subject { described_class.new(player_1, player_2) }

  it 'should return a player instance' do
    expect(subject.player_1).to eq player_1
  end

  it 'should return an instance of itself using a class method' do
    Game.new_game(player_1)
    expect(Game.instance).to be_an_instance_of Game
  end

  context 'when the computer/player 2 beats player 1' do
    it 'shows that player 2 won' do
      allow(player_1).to receive(:choice) { 'Rock' }
      allow(player_2).to receive(:choice) { 'Paper' }
      expect(subject.result).to eq player_2
    end
    it 'shows that player 2 won' do
      allow(player_1).to receive(:choice) { 'Scissors' }
      allow(player_2).to receive(:choice) { 'Rock' }
      expect(subject.result).to eq player_2
    end
    it 'shows that player 2 won' do
      allow(player_1).to receive(:choice) { 'Paper' }
      allow(player_2).to receive(:choice) { 'Scissors' }
      expect(subject.result).to eq player_2
    end
  end

  context 'when player 1 beats the computer/player 2' do
    it 'shows that player 1 won' do
      allow(player_1).to receive(:choice) { 'Scissors' }
      allow(player_2).to receive(:choice) { 'Paper' }
      expect(subject.result).to eq player_1
    end
    it 'shows that player 1 won' do
      allow(player_1).to receive(:choice) { 'Paper' }
      allow(player_2).to receive(:choice) { 'Rock' }
      expect(subject.result).to eq player_1
    end
    it 'shows that player 1 won' do
      allow(player_1).to receive(:choice) { 'Rock' }
      allow(player_2).to receive(:choice) { 'Scissors' }
      expect(subject.result).to eq player_1
    end
  end

  context 'when player 1 and the computer/player 2 choose the same' do
    it 'shows that it is a tie' do
      allow(player_1).to receive(:choice) { 'Paper' }
      allow(player_2).to receive(:choice) { 'Paper' }
      expect(subject.result).to eq :tie
    end
    it 'shows that it is a tie' do
      allow(player_1).to receive(:choice) { 'Rock' }
      allow(player_2).to receive(:choice) { 'Rock' }
      expect(subject.result).to eq :tie
    end
    it 'shows that it is a tie' do
      allow(player_1).to receive(:choice) { 'Scissors' }
      allow(player_2).to receive(:choice) { 'Scissors' }
      expect(subject.result).to eq :tie
    end
  end
end
