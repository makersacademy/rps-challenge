require 'player' 

describe Player do

  let(:player) { Player.new('Luke') }

  it 'should have a name by default' do
    expect(player.name).to eq('Luke')
  end

  describe '#choose_rock' do
    it 'should set player choice as rock' do
      player.choose_rock
        expect(player.player_choice).to eq("rock")
    end  
  end

  describe '#choose_paper' do
    it 'should set player choice as paper' do
      player.choose_paper
        expect(player.player_choice).to eq("paper")
    end  
  end

  describe '#choose_scissors' do
    it 'should set player choice as scissors' do
      player.choose_scissors
        expect(player.player_choice).to eq("scissors")
    end  
  end
end