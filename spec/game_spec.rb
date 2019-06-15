require 'game'

describe 'Game' do

  subject(:game) { Game.new(player_1_name, player_1_choice, computer_choice) }
  let(:player_1_name) { double :player_1_name }
  let(:player_1_choice) { double :player_1_choice }
  let(:computer_choice) { double :computer_choice }

  it 'Starts the game with player name' do
    expect(game.player_1_name).to eq player_1_name
  end

  it 'Commences with player and computer choices' do
    expect(game.player_1_choice).to eq player_1_choice
    expect(game.computer_choice).to eq computer_choice
  end
end
