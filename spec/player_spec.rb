require 'player'

describe Player do
  subject(:player) { described_class.new("Courtney") }
  let(:rps) { double :rps}


  it 'test that player name is returned when called ' do
    expect(player.player_name).to eq "Courtney"
  end

  it 'test that the players choice is returned' do
    player.choice("Rock")
    expect(player.users_choice).to eq "Rock"
  end



end
