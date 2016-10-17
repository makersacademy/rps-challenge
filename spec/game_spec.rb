require 'game'

describe Game do

  it 'lists the choices available (rock, paper, scissors)' do
    expect(Game::CHOICES).to eq [:rock, :paper, :scissors]
  end

  describe '#initialize' do
    it 'instantiates a game with the player being a Player object' do
      expect(subject.player).to be_an_instance_of Player
    end
    it 'instantiates a game with the opponent being a Computer object' do
      expect(subject.opponent).to be_an_instance_of Computer
    end
    it 'defaults the name of the player to "Mystery Person"' do
      expect(subject.player.name).to eq "Mystery Person"
    end
    it 'defaults the name of the opponent to "The Computer"' do
      expect(subject.opponent.name).to eq "The Computer"
    end
  end

  describe '#result' do

    it "shows a draw (both chose rock)" do
      allow(subject.player).to receive(:choice).and_return(:rock)
      allow(subject.opponent).to receive(:choice).and_return(:rock)
      expect(subject.result).to eq :draw
    end
    it "selects the computer as winner (paper beats rock)" do
      allow(subject.player).to receive(:choice).and_return(:rock)
      allow(subject.opponent).to receive(:choice).and_return(:paper)
      expect(subject.result).to eq :lose
    end
    it "selects the player as winner (rock beats scissors)" do
      allow(subject.player).to receive(:choice).and_return(:rock)
      allow(subject.opponent).to receive(:choice).and_return(:scissors)
      expect(subject.result).to eq :win
    end
    it "selects the player as winner (paper beats rock)" do
      allow(subject.player).to receive(:choice).and_return(:paper)
      allow(subject.opponent).to receive(:choice).and_return(:rock)
      expect(subject.result).to eq :win
    end
    it "shows a draw (both chose paper)" do
      allow(subject.player).to receive(:choice).and_return(:paper)
      allow(subject.opponent).to receive(:choice).and_return(:paper)
      expect(subject.result).to eq :draw
    end
    it "selects the computer as winner (paper, scissors)" do
      allow(subject.player).to receive(:choice).and_return(:paper)
      allow(subject.opponent).to receive(:choice).and_return(:scissors)
      expect(subject.result).to eq :lose
    end
    it "selects the computer as winner (rock beats scissors)" do
      allow(subject.player).to receive(:choice).and_return(:scissors)
      allow(subject.opponent).to receive(:choice).and_return(:rock)
      expect(subject.result).to eq :lose
    end
    it "selects the player as winner (scissors, paper)" do
      allow(subject.player).to receive(:choice).and_return(:scissors)
      allow(subject.opponent).to receive(:choice).and_return(:paper)
      expect(subject.result).to eq :win
    end
    it "shows a draw (both chose scissors)" do
      allow(subject.player).to receive(:choice).and_return(:scissors)
      allow(subject.opponent).to receive(:choice).and_return(:scissors)
      expect(subject.result).to eq :draw
    end
  end

end
