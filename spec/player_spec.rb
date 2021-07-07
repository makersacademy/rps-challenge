require 'player'

describe Player do

  subject{Player.new("example name")}

  it 'creates a new player with a name' do
    expect(subject.name).to eq "example name"
  end
  
end
