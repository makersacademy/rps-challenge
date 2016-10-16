require 'game'

describe Game do
  player_1 = Player.new('Marketeer')
  computer = Computer.new
  subject(:game) {Game.new(player_1, computer)}
  let(:rock) { 1 }
  let(:paper) { 2 }
  let(:scissor) { 3 }

  it 'has two players' do
    expect(game).to have_attributes(players: [player_1, computer])
  end

  it 'responds to compare the results' do
    expect(game).to respond_to(:compare)
  end

  it '#winner of round' do
    winner = player_1
    game.winner_of_round(winner)
    expect(game.round_winner).to eq winner
  end

  context 'comparing' do

    before do
      computer_choice = paper
      allow(game.computer_player).to receive(:computer_choice).and_return(computer_choice)
    end

  it 'the choices are equal' do
    player_1_choice = paper
    player_1.players_choice(player_1_choice)
    game.compare
    expect(game.round_winner).to eq 'Tie'
  end

  it 'player_1 wins' do
    player_1_choice = scissor
    player_1.players_choice(player_1_choice)
    game.compare
    expect(game.round_winner).to eq player_1
  end

  it 'computer wins' do
    player_1_choice = rock
    player_1.players_choice(player_1_choice)
    game.compare
    expect(game.round_winner).to eq computer
  end


end

end
