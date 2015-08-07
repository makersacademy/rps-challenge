require 'player.rb'

describe Player do 

  it { is_expected.to respond_to(:throw).with(1).argument() }
  it { is_expected.to respond_to(:name) }

end