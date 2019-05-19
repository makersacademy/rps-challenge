describe Game do

before(:each) do
  @game = make_a_new_game
end

  it 'remembers the player\'s choice' do
    #game = make_a_new_game

    #subject = make_a_new_game
    expect(@game.player_choice).to eq('rock')
  end

  it 'has a random_move method' do
    #game = make_a_new_game

    #subject = make_a_new_game
    expect(@game).to respond_to(:random_move)
  end

  it 'has options to choose from' do
    #game = make_a_new_game

    #subject = make_a_new_game
    expect(@game.options).to eq(["rock", "paper", "scissors"])
  end

  it 'chooses a random move' do
    #game = make_a_new_game

    #subject = make_a_new_game
    expect(@game.options).to include(@game.game_choice)
  end

  it 'has a judge method' do
    expect(@game).to respond_to(:judge)
  end

  it 'rock beats scissors' do
    allow(@game).to receive(:game_choice).and_return('scissors')
    p @game.game_choice
    expect(@game.judge).to eq('You win!')
  end

  it 'rock draws rock' do
    allow(@game).to receive(:game_choice).and_return('rock')
    p @game.game_choice
    expect(@game.judge).to eq('We draw!')
  end

  it 'rock loses to paper' do
    allow(@game).to receive(:game_choice).and_return('paper')
    p @game.game_choice
    expect(@game.judge).to eq('I win!')
  end
end
