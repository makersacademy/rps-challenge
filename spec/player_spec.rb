describe Player do
  let(:player) { Player.new('Luke') }

  describe '#throw' do
    it 'should change the players action to their throw' do
      action = :rock
      expect { player.throw(action) }.to change { player.action }.from(nil).to(action)
    end
  end

  describe '#thrown_action?' do
    it 'should return whether the player\'s action has been thrown or not' do
      action = :paper
      player.throw(action)
      expect(player.thrown_action?).to be true
    end
  end

  describe '#reset_action' do
    it 'should change player\'s action to nil' do
      action = :scissors
      player.throw(action)
      expect { player.reset_action }.to change { player.action }.from(action).to(nil)
    end
  end

  describe '#increase_score' do
    it 'should increase the score by 1' do
      expect { player.increase_score}.to change { player.score }.by(1)
    end
  end

  describe '#computer?' do
    it 'should return false if player is not a computer' do
      expect(player.computer?).to be false
    end
  end
end

describe Computer do
  it 'should be a computer' do
    expect(subject.computer?).to be true
  end

  describe '#random_throw' do
    it 'should return rock, paper, or scissors' do
      expect(subject.random_throw).to eq(:rock).or equal(:paper).or equal(:scissors)
    end
  end
end