require './lib/game'

describe Game do

  let(:player_1) { double(:player) }
  let(:player_2) { double(:player) }
  let(:bot_class) { double(:bot_class) }
  let(:bot) { double(:bot) }
  let(:result_class) { double(:result_class) }

  context 'In a one player game' do

    before(:each) do
      allow(bot_class).to receive(:new).and_return(bot)
    end

    it 'creates a new bot for a one player game' do
      expect(bot_class).to receive(:new).and_return(bot)
      Game.new(player_1, nil, bot_class)
    end

    it 'can create an instance of itself' do
      expect(Game.create(player_1, nil, bot_class)).to be_an_instance_of(described_class)
    end

    it 'returns itself' do
      game = Game.create(player_1, nil, bot_class)
      expect(Game.instance).to eq game
    end

    it 'returns a result' do
      allow(player_1).to receive(:choice).and_return('this')
      allow(bot).to receive(:choice).and_return('that')
      allow(bot).to receive(:weapon)
      game = Game.create(player_1, nil, bot_class)
      expect(result_class).to receive(:run)
      game.result(result_class)
    end

  end

end
