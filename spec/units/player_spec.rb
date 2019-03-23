require './lib/player.rb'

describe Player do

  let(:player_1) { Player.new('P1') }

  it 'stores a name' do
    expect(player_1.name).to eq 'P1'
  end

  it 'can make a choice' do
    expect { player_1.play("choice") }.to change { player_1.choice }.from("").to("choice")
  end

end
