require './lib/player'

describe Player do
  subject(:player_1) { Player.new("Nayr") }
  let(:rock_throw) { double :throw, choice: "rock" }
  describe '#initialize' do
    it 'assigns a name if provided one' do
      expect(subject.name).to eq "Nayr"
    end
  end

  describe '#add(throw)' do
    it 'assigns a Throw object as an attribute' do
      subject.add(rock_throw)
      expect(subject.throw.choice).to eq "rock"
    end
  end
end
