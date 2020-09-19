require 'Player'
require 'Game'

describe Player do

  subject(:player) { Player.new('Bob') }
  subject(:player_options) { Game::DEFAULT_OPTIONS }

  describe 'name' do
    it 'returns player name' do
      expect(player.name).to eq('Bob')
    end
  end

  describe 'player_choice' do
    it 'player makes a choice' do
      expect(player_options.sample).to match('paper').or match('rock').or match('scissors')
    end
  end

  describe '#print_player_choice'
  it 'prints player choice' do
    player_choice = player_options.sample
    printed_player_choice = "#{player.name} chose #{player_choice.to_s}"
    expect(player.print_player_choice).to eq(printed_player_choice)
  end
end
