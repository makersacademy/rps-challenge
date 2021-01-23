require 'turn'

describe Turn do
  subject(:turn) {described_class.new(options)}
  #the doubles are going to be a hash of the session information stored in the instance variables within the get /lets_fight requestion from the game_play_spec.rb file
  let(:options) {{"player_name" => "Holly", "player_weapon" => :rock, "computer_weapon" => :paper }}

  # we want each key to return their value so we want them to be attrubute readers so we need to test for this
  describe '#player_name' do
    it 'returns player name' do
    expect(turn.player_name).to eq "Holly"
    end
  end

  describe '#player_weapon' do
    it 'returns player weapon' do
    expect(turn.player_weapon).to eq :rock
    end
  end

  describe '#computer_weapon' do
    it 'returns computer weapon' do
    expect(turn.computer_weapon).to eq :paper
  end
  end

end
