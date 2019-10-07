require 'player'

describe Player do

  it 'has a name' do
    user = Player.new("Irina")
    expect(user.name).to eq("Irina")
  end

  it 'can make a choice' do
    user = Player.new("Irina")
    user.make_a_choice("Paper")
    expect(user.choice).to eq("Paper")
  end

end
