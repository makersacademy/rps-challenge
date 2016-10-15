describe Game do

  subject(:game) {described_class.new("Player1")}

  before do
    allow(game).to receive(:rand_choice) {2}
  end

  it 'should accept and set a player\'s choice' do
    game.set_player_choice(:rock)
    expect(game.player1_choice).to eq :rock
  end

  it 'should create an auto-choice for player 2' do
    game.set_auto_choice
    expect(game.player2_choice).to eq :scissors
  end

  it 'can stub out randomness using stub argument' do
    game.set_auto_choice(1)
    expect(game.player2_choice).to eq :paper
  end

  it 'should be able to decide who has won' do
    game.set_player_choice(:rock)
    game.set_auto_choice
    game.decide_winner
    expect(game.winner).to eq "Player1"
  end

  it 'should set correct message' do
    game.set_player_choice(:rock)
    game.set_auto_choice
    game.decide_winner
    expect(game.message).to eq "Player1, you are the winner!"
  end

  it 'should set correct philosophy' do
    game.set_player_choice(:rock)
    game.set_auto_choice(0)
    game.decide_winner
    expect(game.philosophy).to eq "Enjoy the sense of balance that true equality can bring."
  end

end
