require 'game'
require 'pry'

describe Game do

  let(:player) { double :player, :name => "Irina" }
  let(:computer) { double :computer }
  let(:game) { Game.create(player, computer) }

  it 'is created with a human player' do
    expect(game).to be_an_instance_of(Game)
  end

  it 'can have a user choose something' do
    allow(game).to receive(:player).and_return(player)
    expect(player).to receive(:make_a_choice)
    game.player_chooses("Rock")
  end

  it 'if user chooses Rock, computer chooses Scissors, user wins' do
    allow(game).to receive(:player).and_return(player)
    allow(player).to receive(:choice).and_return("Rock")
    allow(game).to receive(:computer).and_return(computer)
    allow(computer).to receive(:choice).and_return("Scissors")
    expect(game.score_game).to eq("Win")
  end

  it 'if user chooses Scissors, computer chooses Rock, user loses' do
    allow(game).to receive(:player).and_return(player)
    allow(player).to receive(:choice).and_return("Scissors")
    allow(game).to receive(:computer).and_return(computer)
    allow(computer).to receive(:choice).and_return("Rock")
    expect(game.score_game).to eq("Lose")
  end

  it 'if user chooses Scissors, computer chooses Scissors, then it\'s a draw' do
    allow(game).to receive(:player).and_return(player)
    allow(player).to receive(:choice).and_return("Scissors")
    allow(game).to receive(:computer).and_return(computer)
    allow(computer).to receive(:choice).and_return("Scissors")
    expect(game.score_game).to eq("Draw")
  end

end
