require 'Player'

describe Player do

  subject(:player) { Player.new('Bob') }

  describe '#name' do
    it 'returns player name' do
      expect(player.name).to eq('Bob')
    end
  end

  #before showing results, I need to ask to show computer choice""

  #describe '#show_results' do
  #  it 'returns the comparison between PC and Players results' do
  #    expect(player.show_results).to eq 'rock'
  #  end
  #end

end