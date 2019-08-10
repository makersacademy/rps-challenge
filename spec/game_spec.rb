require "game"

describe Game do

  subject{Game.new("rock")}

  it 'user picks weapon' do
    expect(subject.weapon).to eq "rock"
  end
end
