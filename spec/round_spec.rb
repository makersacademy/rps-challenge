describe Round do
  subject(:round) { described_class.new }
  let(:player_1) { instance_double('Player') }
  let(:player_2) { instance_double('Player') }

  describe '#outcome_decided?' do
    it 'should return true when an outcome has been reached' do
      round.set_outcome('smashes')
      expect(round.outcome_decided?).to be true
    end
  end

  describe '#set_winner' do
    it 'should change winner to winning player' do
      expect { round.set_winner(player_1) }.to change { round.winner }.to(player_1)
    end
  end

  describe '#set_looser' do
    it 'should change looser to loosing player' do
      expect { round.set_looser(player_2) }.to change { round.looser }.to(player_2)
    end
  end

  describe '#set_outcome' do
    it 'should change outcome to outcome description' do
      expect { round.set_outcome('smashes') }.to change { round.outcome }.to('smashes')
    end
  end
end