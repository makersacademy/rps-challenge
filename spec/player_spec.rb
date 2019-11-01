require 'player'

describe Player do
  subject(:bradley) {Player.new}

  it 'can be an instance of Player' do
    expect(bradley).to be_instance_of Player
  end
end