require 'game'
require 'player'

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

  it 'can play' do
    expect(game).to respond_to(:play)
  end

  it 'has a round winner' do
    expect(game).to respond_to(:round_winner)
  end

  it 'has a tie score' do
    expect(game).to respond_to(:tie_score)
  end

  context 'comparing' do

    before do
      computer_choice = paper
      allow(game.computer_player).to receive(:computer_choice).and_return(computer_choice)
    end

  it 'the choices are equal' do
    player_1_choice = paper
    player_1.players_choice(player_1_choice)
    game.play
    expect(game.round_winner).to eq 'Tie'
  end

  it 'player_1 wins' do
    player_1_choice = scissor
    player_1.players_choice(player_1_choice)
    game.play
    expect(game.round_winner).to eq player_1.name
  end

  it 'computer wins' do
    player_1_choice = rock
    player_1.players_choice(player_1_choice)
    game.play
    expect(game.round_winner).to eq computer.name
  end
end

  context 'updates scores' do
    before do
      computer_choice = paper
      allow(game.computer_player).to receive(:computer_choice).and_return(computer_choice)
    end
    it 'updates players scores' do
      player_1_choice = scissor
      player_1.players_choice(player_1_choice)
      expect{game.play}.to change{player_1.score}.by(1)
    end

    it 'updates computers scores' do
      player_1_choice = rock
      player_1.players_choice(player_1_choice)
      expect{game.play}.to change{computer.score}.by(1)
    end

    it 'updates tie scores' do
      player_1_choice = paper
      player_1.players_choice(player_1_choice)
      expect{game.play}.to change{game.tie_score}.by(1)
    end

  end

end
