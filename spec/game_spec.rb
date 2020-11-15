describe Game do
  let(:player) { double('player', name: :Human) }
  let(:cpu) { double('cpu', name: :AI) }
  let(:game) { Game.new(player) }
  let(:game_with_fake_cpu) { Game.new(player, cpu) }

  describe '#initialize' do
    it 'takes in a Player object' do
      expect(game.player).to eq(player)
    end

    it 'has a CPU opponent injected' do
      expect(game.cpu).to be_a_kind_of(Object)
    end
  end

  describe '.create' do
    it 'creates an instance of Game' do
      expect(Game.create(player)).to be_instance_of(Game)
    end
  end

  describe '.instance' do
    it 'returns the instance of Game created by create' do
      created_game = Game.create(player)
      expect(Game.instance).to eq(created_game)
    end
  end

  describe '#play_round' do
    it 'calls the Player choose method' do
      expect(player).to receive(:choose).with('rock')
      game.play_round('rock')
    end

    it 'calls the CPU choose method' do
      allow(player).to receive(:choose)
      expect(cpu).to receive(:choose)
      game_with_fake_cpu.play_round('rock')
    end

    it 'updates the round number' do
      allow(player).to receive(:choose)
      expect { game.play_round('rock') }.to change { game.round }.by(1)
    end
  end

  describe '#update_scores' do
    it 'calls receive_point method for winner of the round' do
      allow(player).to receive(:choice) { :rock }
      allow(cpu).to receive(:choice) { :paper }
      expect(cpu).to receive(:receive_point)
      game_with_fake_cpu.update_scores
    end
  end

  describe '#status' do
    it 'calls the winner? method' do
      expect(game_with_fake_cpu).to receive(:winner?)
      game_with_fake_cpu.status
    end

    it 'calls assign_outcomes if there is a winner?' do
      allow(game_with_fake_cpu).to receive(:winner?) { true }
      expect(game_with_fake_cpu).to receive(:assign_outcomes)
      game_with_fake_cpu.status
    end

    it 'returns nil if there is no winner' do
      allow(game_with_fake_cpu).to receive(:winner?) { false }
      expect(game_with_fake_cpu.status).to eq(nil)
    end

    it "returns 'complete' if there is a winner" do
      allow(game_with_fake_cpu).to receive(:winner?) { true }
      allow(game_with_fake_cpu).to receive(:assign_outcomes)
      expect(game_with_fake_cpu.status).to eq('complete')
    end
  end
end