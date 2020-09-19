require 'Player'

describe Player do

  subject(:player) { Player.new('Bob') }


  describe 'name' do
    it 'returns player name' do
      expect(player.name).to eq('Bob')
    end
  end

  #  describe 'player_choice'
  #  it 'player makes a choice' do
  #    expect(computer_options.sample).to match('paper').or match('rock').or match('scissors')
  #  end

end
