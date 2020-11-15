describe Game do
  let(:player) { double('player', name: :Human, score: 0) }
  let(:cpu) { double('cpu', name: :AI, score: 0) }
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

  describe '#play' do
    it 'calls the Player choose method' do
      expect(player).to receive(:choose).with('rock')
      game.play('rock')
    end

    it 'calls the CPU choose method' do
      allow(player).to receive(:choose)
      expect(cpu).to receive(:choose)
      game_with_fake_cpu.play('rock')
    end

    it 'updates the scores' do
      allow(player).to receive(:choose).with('scissors')
      allow(cpu).to receive(:choose) { :rock }
      expect { game_with_fake_cpu.play('scissors') }.to change { cpu.score }.from(0).to(1)
    end
  end
end