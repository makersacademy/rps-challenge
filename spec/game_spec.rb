require 'game'

describe 'Game' do

  it 'A player should be able to enter their hand when playing' do
    player = double(:fakeplayer)
    game = Game.new(player)
    expect(game).to respond_to(:play).with(1).argument
  end

  it 'can view the players in the players array' do
    player = double(:fakeplayer)
    game = Game.new(player)
    expect(game.players).to eq([[player]])
  end

  it 'can return a hand from the game engine' do
    player = double(:fakeplayer)
    p1_hand = double(:p1_fake_hand)
    rock = double(:fake_rock)
    game = Game.new(player)
    expect(game.play(p1_hand)).to be_a(Symbol)
  end

  it 'can identify a draw between rocks' do
    player = double(:fakeplayer)
    game = Game.new(player)

#Need to get more explanation on this and why its a bad idea to stub.

    # allow(game).to receive(:play ).and_return [:rock]
    game.play(:rock)
    puts "-"*80
    puts game.play(:rock)
    # puts game.p1_hand
    # puts game.comp_hand
    puts "-"*80
    expect(game.winner).to eq("It's a draw!")
  end




end
