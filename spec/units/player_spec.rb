describe Player do
  let(:player_class) { described_class }
  let(:player) { described_class.new('Player 1') }

  let(:choice) { "Rock" }

  describe '.new(name)' do
    it 'should accept a name parameter' do
      expect(player_class).to respond_to(:new).with(1).argument
    end
  end

  describe '.name' do
    it 'should return the player name' do
      expect(player.name).to eq 'Player 1'
    end
  end

  describe '.add_choice' do
    it 'should record the players choice' do
      expect(player.add_choice(choice)).to eq choice
    end
  end

  describe '.choice' do
    it 'should return the player choice' do
      player.add_choice(choice)
      expect(player.choice).to eq choice
    end
  end
end
