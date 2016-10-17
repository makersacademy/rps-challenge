require 'game.rb'

describe Game do
  let(:player_1) { double("Player_1", :name => "Player_1", :choice => "rock", :receive_points => 1) }
  subject(:game) { described_class.new(player_1, "scissors") }

  it 'initializes with a default weapon of choice' do
    expect(game).to respond_to :choice
  end

  it 'calculates a winner' do
    expect(game.check_result).to eq "Player_1"
  end

end
