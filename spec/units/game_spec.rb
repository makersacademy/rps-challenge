require './lib/game'

describe Game do

  let(:player_1) {double(:player)}
  let(:player_2) {double(:player)}
  let(:bot_class) {double(:bot_class)}
  let(:bot) {double(:bot)}

  it 'creates a new bot for a one player game' do
    allow(bot_class).to receive(:new).and_return(bot)
    expect(bot_class).to receive(:new).and_return(bot)
    Game.new(player_1, nil, bot_class)
  end

  it 'can create an instance of itself' do
    allow(bot_class).to receive(:new)
    expect(Game.create(player_1, nil, bot_class)).to be_an_instance_of(described_class)
  end

  it 'returns itself' do
    game = Game.create(player_1, nil, bot_class)
    expect(Game.instance).to eq game
  end

end
