require 'round'

describe Round do
  it 'knows ‘rock’ beats ‘scissors’' do
    player_hash = { name: 'Player', action: :rock }
    opponent_hash = { name: 'Opponent', action: :scissors }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :rock
  end
end
