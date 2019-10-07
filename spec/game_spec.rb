require './lib/PlayGame.rb'

describe PlayGame do
  it 'A player can lose a game' do
    player = double(:player)
    bot = double(:game)
    expect(player).to receive(:choice).and_return("rock")
    expect(bot).to receive(:choice).and_return("paper")
    game = PlayGame.new(player.choice, bot.choice)
    expect(game.play).to eq("lose")
  end

  it 'A player can lose a game' do
    player = double(:player)
    bot = double(:game)
    expect(player).to receive(:choice).and_return("scissors")
    expect(bot).to receive(:choice).and_return("rock")
    game = PlayGame.new(player.choice, bot.choice)
    expect(game.play).to eq("lose")
  end


  it 'A player can win a game' do
    player = double(:player)
    bot = double(:game)
    expect(player).to receive(:choice).and_return("paper")
    expect(bot).to receive(:choice).and_return("rock")
    game = PlayGame.new(player.choice, bot.choice)
    expect(game.play).to eq("win")
  end

  it 'A player can draw a game' do
    player = double(:player)
    bot = double(:game)
    expect(player).to receive(:choice).and_return("paper")
    expect(bot).to receive(:choice).and_return("paper")
    game = PlayGame.new(player.choice, bot.choice)
    expect(game.play).to eq("draw")
  end


end
