require './model/player.rb'

describe Player do
  it 'checks if the class exists' do
  end

  it {is_expected.to respond_to(:pick).with(1).argument }

end