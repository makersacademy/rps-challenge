require 'game'

describe Game do

  let(:player) { double :player }
  subject { described_class.new(player) }

  it 'should return a player instance' do
    expect(subject.player).to eq player
  end

  it 'should return an instance of itself using a class method' do
    Game.new_game(player)
    expect(Game.instance).to be_an_instance_of Game
  end

  context 'when asked to pick an option' do
    it 'returns a random choice of rock, paper or scissors' do
      allow(Kernel).to receive(:rand) { 1 }
      subject.pick_option
      expect(subject.choice).to eq 'Rock'
    end
  end

  context 'when a player chooses Rock and the Game chooses Paper' do
    it 'shows that the Game won' do
      allow(player).to receive(:choice) { 'Rock' }
      allow(Kernel).to receive(:rand) { 2 }
      subject.pick_option
      expect(subject.result).to eq 'win'
    end
  end

  context "when a player chooses Scissors and the Game chooses Paper" do
    it 'shows that the Game lost' do
      allow(player).to receive(:choice) { 'Scissors' }
      allow(Kernel).to receive(:rand) { 2 }
      subject.pick_option
      expect(subject.result).to eq 'lose'
    end
  end

  context "when a player chooses Paper and the Game chooses Paper" do
    it 'shows that the Game tied' do
      allow(player).to receive(:choice) { 'Paper' }
      allow(Kernel).to receive(:rand) { 2 }
      subject.pick_option
      expect(subject.result).to eq 'tie'
    end
  end
end
