require 'rock_paper_scissors_game'

describe RockPaperScissorsGame do
  let(:player_double){double('player_double')}
  it 'can store an instance of itself' do
    RockPaperScissorsGame.create(player_double)

    game = RockPaperScissorsGame.instance

    expect(game).to be_instance_of(RockPaperScissorsGame)
  end

  it 'can store the same instance' do
    RockPaperScissorsGame.create(player_double)

    game1 = RockPaperScissorsGame.instance
    game2 = RockPaperScissorsGame.instance

    expect(game1).to be(game2)
  end

  it 'can create a new instance' do
    RockPaperScissorsGame.create(player_double)
    game1 = RockPaperScissorsGame.instance

    RockPaperScissorsGame.create(player_double)
    game2 = RockPaperScissorsGame.instance

    expect(game1).to_not be(game2)
  end

  it 'can store a player' do
    my_rpsg = RockPaperScissorsGame.new(player_double)

    expect(my_rpsg.player).to eq(player_double)
  end
end
