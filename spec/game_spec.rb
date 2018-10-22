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

  context 'when a player chooses Rock and the Game chooses Paper' do
    it 'shows that the Game won' do
      allow(player_1).to receive(:choice) { 'Rock' }
      allow(player_2).to receive(:choice) { 'Paper' }
      expect(subject.result).to eq player_2
    end
  end

  context "when a player chooses Scissors and the Game chooses Paper" do
    it 'shows that the Game lost' do
      allow(player_1).to receive(:choice) { 'Scissors' }
      allow(player_2).to receive(:choice) { 'Paper' }
      expect(subject.result).to eq player_1
    end
  end

  context "when a player chooses Paper and the Game chooses Paper" do
    it 'shows that the Game tied' do
      allow(player_1).to receive(:choice) { 'Paper' }
      allow(player_2).to receive(:choice) { 'Paper' }
      expect(subject.result).to eq :tie
    end
  end
end
