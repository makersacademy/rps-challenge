require 'player'

describe Player do

  subject(:katy) { Player.new('Katy') }

  it "should return an new instance of the player class with a name" do
    expect(katy.name).to eq "Katy"
  end

end 
