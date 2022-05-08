describe Player do
  let(:player_1) { Player.new('Luke') }
  let(:player_2) { Player.new('Kirsty') }
  let(:round) { instance_double('Round') }

  describe '#name' do
    it 'should return the name of the player' do
      expect(player_1.name).to eq 'Luke'
    end
  end

  describe '#throw' do
    it 'should change action to throw' do
      action = :rock
      expect { player_1.throw(action) }.to change { player_1.action }.from(nil).to(action)
    end
  end

  describe '#reset_action' do
    it 'should change action to nil' do
      action = :rock
      player_1.throw(action)
      expect { player_1.reset_action }.to change { player_1.action }.from(action).to(nil)
    end
  end

  describe '#increase_score' do
    it 'should increase the score by 1' do
      expect { player_1.increase_score}.to change { player_1.score }.by(1)
    end
  end

  describe '#computer?' do
    it 'should return false if player 2 is not a computer' do
      expect(player_2.computer?).to be false
    end
  end
end
