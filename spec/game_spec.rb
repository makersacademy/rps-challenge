require 'game'

describe Game do
  let(:subject) {described_class.new(player_1)}
  let(:player_1) {double(:player, weapon: 0, name: 'Jack')}
  let(:player_2) {double(:player, weapon: 0, name: 'Com')}

  before do
    subject.instance_variable_set('@p1', player_1)
    subject.instance_variable_set('@p2', player_2)
  end

  describe '#initialize' do
    it 'stores both players' do
      expect(subject.p1).to be player_1
      expect(subject.p2).to be player_2
    end
  end

  describe '#self.instance' do
    it 'returns itself' do
      Game.create('Jack')
      expect(Game.instance).to be_a(Game)
    end
  end

  describe '#result(rock/x)' do
    before do
      allow(player_2).to receive(:weapon).and_return(0)
    end
    it 'returns the correct result - draw(rock)' do
      allow(player_1).to receive(:weapon).and_return(0)
      expect(subject.result).to eq "It's a draw!"
    end
    it 'returns the correct result - paper/rock' do
      allow(player_1).to receive(:weapon).and_return(1)
      expect(subject.result).to eq "Jack wins!"
    end
    it 'returns the correct result - scissors/rock' do
      allow(player_1).to receive(:weapon).and_return(2)
      expect(subject.result).to eq "Com wins!"
    end
    it 'returns the correct result - lizard/rock' do
      allow(player_1).to receive(:weapon).and_return(3)
      expect(subject.result).to eq "Com wins!"
    end
    it 'returns the correct result - spock/rock' do
      allow(player_1).to receive(:weapon).and_return(4)
      expect(subject.result).to eq "Jack wins!"
    end
  end
  describe '#result(paper/x)' do
    before do
      allow(player_2).to receive(:weapon).and_return(1)
    end
    it 'returns the correct result - draw(paper)' do
      allow(player_1).to receive(:weapon).and_return(1)
      expect(subject.result).to eq "It's a draw!"
    end
    it 'returns the correct result - rock/paper' do
      allow(player_1).to receive(:weapon).and_return(0)
      expect(subject.result).to eq "Com wins!"
    end
    it 'returns the correct result - scissors/paper' do
      allow(player_1).to receive(:weapon).and_return(2)
      expect(subject.result).to eq "Jack wins!"
    end
    it 'returns the correct result - lizard/paper' do
      allow(player_1).to receive(:weapon).and_return(3)
      expect(subject.result).to eq "Jack wins!"
    end
    it 'returns the correct result - spock/paper' do
      allow(player_1).to receive(:weapon).and_return(4)
      expect(subject.result).to eq "Com wins!"
    end
  end
  describe '#result(scissors/x)' do
    before do
      allow(player_2).to receive(:weapon).and_return(2)
    end
    it 'returns the correct result - draw(scissors)' do
      allow(player_1).to receive(:weapon).and_return(2)
      expect(subject.result).to eq "It's a draw!"
    end
    it 'returns the correct result - rock/scissors' do
      allow(player_1).to receive(:weapon).and_return(0)
      expect(subject.result).to eq "Jack wins!"
    end
    it 'returns the correct result - paper/scissors' do
      allow(player_1).to receive(:weapon).and_return(1)
      expect(subject.result).to eq "Com wins!"
    end
    it 'returns the correct result - lizard/scissors' do
      allow(player_1).to receive(:weapon).and_return(3)
      expect(subject.result).to eq "Com wins!"
    end
    it 'returns the correct result - spock/scissors' do
      allow(player_1).to receive(:weapon).and_return(4)
      expect(subject.result).to eq "Jack wins!"
    end
  end
  describe '#result(lizard/x)' do
    before do
      allow(player_2).to receive(:weapon).and_return(3)
    end
    it 'returns the correct result - draw(lizard)' do
      allow(player_1).to receive(:weapon).and_return(3)
      expect(subject.result).to eq "It's a draw!"
    end
    it 'returns the correct result - rock/lizard' do
      allow(player_1).to receive(:weapon).and_return(0)
      expect(subject.result).to eq "Jack wins!"
    end
    it 'returns the correct result - paper/lizard' do
      allow(player_1).to receive(:weapon).and_return(1)
      expect(subject.result).to eq "Com wins!"
    end
    it 'returns the correct result - scissors/lizard' do
      allow(player_1).to receive(:weapon).and_return(2)
      expect(subject.result).to eq "Jack wins!"
    end
    it 'returns the correct result - spock/lizard' do
      allow(player_1).to receive(:weapon).and_return(4)
      expect(subject.result).to eq "Com wins!"
    end
  end
  describe '#result(spock/x)' do
    before do
      allow(player_2).to receive(:weapon).and_return(4)
    end
    it 'returns the correct result - draw(rock)' do
      allow(player_1).to receive(:weapon).and_return(4)
      expect(subject.result).to eq "It's a draw!"
    end
    it 'returns the correct result - rock/spock' do
      allow(player_1).to receive(:weapon).and_return(0)
      expect(subject.result).to eq "Com wins!"
    end
    it 'returns the correct result - paper/spock' do
      allow(player_1).to receive(:weapon).and_return(1)
      expect(subject.result).to eq "Jack wins!"
    end
    it 'returns the correct result - scissors/spock' do
      allow(player_1).to receive(:weapon).and_return(2)
      expect(subject.result).to eq "Com wins!"
    end
    it 'returns the correct result - lizard/spock' do
      allow(player_1).to receive(:weapon).and_return(3)
      expect(subject.result).to eq "Jack wins!"
    end
  end

end
