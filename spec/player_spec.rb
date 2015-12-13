require 'player'

describe Player do
  subject(:player){described_class.new('Andrew')}
  subject(:opponent){described_class.new('Opponent')}

  describe '#name' do
    it 'gives player\'s name' do
      expect(player.name).to eq 'Andrew'
    end
  end

  describe '#decides' do
    it 'assigns a string that can be read with #decision' do
      player.decides('rock')
      expect(player.decision).to eq 'rock'
    end
  end

  describe '#random_decides' do
    it 'can generate string rock' do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(player.random_decides).to eq 'rock'
    end
    it 'can generate string paper' do
      allow(Kernel).to receive(:rand).and_return(1)
      expect(player.random_decides).to eq 'paper'
    end
    it 'can generate string scissors' do
      allow(Kernel).to receive(:rand).and_return(2)
      expect(player.random_decides).to eq 'scissors'
    end
  end

  describe '#beat?' do
    context 'player chooses rock' do
      before {player.decides('rock')}
      it 'returns nil if opponent chose rock' do
        opponent.decides('rock')
        expect(player.beat?(opponent)).to eq nil
      end
      it 'returns false if opponent chose paper' do
        opponent.decides('paper')
        expect(player.beat?(opponent)).to eq false
      end
      it 'returns true if opponent chose scissors' do
        opponent.decides('scissors')
        expect(player.beat?(opponent)).to eq true
      end
    end

    context 'player chooses paper' do
      before {player.decides('paper')}
      it 'returns true if opponent chose rock' do
        opponent.decides('rock')
        expect(player.beat?(opponent)).to eq true
      end
      it 'returns nil if opponent chose paper' do
        opponent.decides('paper')
        expect(player.beat?(opponent)).to eq nil
      end
      it 'returns false if opponent chose scissors' do
        opponent.decides('scissors')
        expect(player.beat?(opponent)).to eq false
      end
    end

    context 'player chooses scissors' do
      before {player.decides('scissors')}
      it 'returns false if opponent chose rock' do
        opponent.decides('rock')
        expect(player.beat?(opponent)).to eq false
      end
      it 'returns true if opponent chose paper' do
        opponent.decides('paper')
        expect(player.beat?(opponent)).to eq true
      end
      it 'returns nil if opponent chose scissors' do
        opponent.decides('scissors')
        expect(player.beat?(opponent)).to eq nil
      end
    end

  end

end
