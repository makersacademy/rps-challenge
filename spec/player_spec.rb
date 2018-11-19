require 'player'

describe Player do 

  subject(:elly) { Player.new('elly') }

  it "return the name of the player" do
    expect(subject.name). to eq "elly"
  end

end