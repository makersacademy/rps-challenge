require 'game'

describe Game do

  let(:game) { game = Game.new } 

  it 'has no players to start' do
    expect(game.players.count).to eq 0
  end  

  it 'can add 2 players' do
    player_one = double :player_one
    player_two = double :player_two

    game.add player_one
    game.add player_two

    expect(game.players).to eq [player_one, player_two]
  end

  it 'cannot add more than two players' do
    player_one = double :player_one

    expect{3.times { game.add player_one }}.to raise_error "Sorry, you can't have more than two players"
    expect(game.players).to eq [player_one, player_one]
  end

  it 'can decide a winner' do
    rock_player     = double :rock, shape: :rock
    scissors_player = double :scissors, shape: :scissors
    game.add rock_player
    game.add scissors_player

    expect(game.winner).to eq rock_player
  end 

  it 'knows that rock beats scissors' do
    rock_player     = double :rock, shape: :rock
    scissors_player = double :scissors, shape: :scissors
    game.add scissors_player
    game.add rock_player

    expect(game.winner).to eq rock_player
  end

  it 'knows that scissors beats paper' do
    scissors_player = double :scissors, shape: :scissors
    paper_player = double :paper, shape: :paper
    game.add paper_player
    game.add scissors_player

    expect(game.winner).to eq scissors_player
  end

  it 'knows that paper beats rock' do
    rock_player  = double :rock, shape: :rock
    paper_player = double :paper, shape: :paper
    game.add paper_player
    game.add rock_player

    expect(game.winner).to eq paper_player
  end

  it 'knows when the game is tied' do
    rock_player  = double :rock, shape: :rock
    game.add rock_player
    game.add rock_player

    expect(game.winner).to eq :tie
  end


end
