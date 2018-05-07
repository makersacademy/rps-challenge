describe Game do

  subject(:game) { described_class.new(player, bot) }
  let(:player) { double :player }
  let(:bot) { double :bot }

  describe '#initialize' do

    it 'receives instance of player' do
      expect(game.player).to be player
    end

    it 'receives instance of bot' do
      expect(game.bot).to be bot
    end

    it 'has attribute choice' do
      expect(game.choice).to be_nil
    end

  end

  describe '#self.save_instance' do

    it 'saves instance of itself' do
      Game.save_instance(player, bot)
      expect(Game.instance).to be_instance_of Game
    end

  end

  describe '#determine_winner' do

    it 'returns if player is winner based on RPS rules' do
      game.choice = "Rock"
      allow(bot).to receive(:choice).and_return("Scissors")
      expect(game.result).to eq "Win"
    end

    it 'returns if player lost based on RPS rules' do
      game.choice = "Paper"
      allow(bot).to receive(:choice).and_return("Scissors")
      expect(game.result).to eq "Loss"
    end

    it 'returns a draw based on RPS rules' do
      game.choice = "Rock"
      allow(bot).to receive(:choice).and_return("Rock")
      expect(game.result).to eq "Draw"
    end

  end

end
