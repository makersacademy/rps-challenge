require './lib/game'

describe RockPaperScissors do

  it { is_expected.to respond_to(:initialize_player).with(1).argument }

end
