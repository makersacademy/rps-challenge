require 'user'

describe User do

  it 'has a name' do
    user = User.new("Irina")
    expect(user.player_name).to eq("Irina")
  end

  it 'can make a choice' do
    user = User.new("Irina")
    user.make_a_choice("Paper")
    expect(user.choice).to eq("Paper")
  end

end
