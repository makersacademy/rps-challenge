require 'game'
describe Game do
  subject(:game)      { described_class.new(player_choice) }
  let(:player_choice) {'rock'}


  it 'knows the players choice' do
    expect(game.player_choice).to eq player_choice.capitalize
  end

  it 'raises an error when player cohice is invalid' do
    expect { Game.new('rokc') }.to raise_error "Invalid choice"
  end

  it "chooses a random sample of 'Rock, Paper, Scissors'" do
    game.choose
    random = game.game_choice
    expect(['Rock', 'Paper', 'Scissors']).to include(random)
  end


  it "decides a winner" do

  end
end
