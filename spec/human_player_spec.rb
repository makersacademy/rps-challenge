require 'human_player'
require 'player_spec'

describe HumanPlayer do
  let(:test_player) {described_class.new TEST_NAME}

  it_behaves_like 'a player'

end
