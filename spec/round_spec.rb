require 'round'

describe Round do
  it 'knows ‘rock’ beats ‘scissors’' do
    player_hash = { name: 'Player', action: :rock }
    opponent_hash = { name: 'Opponent', action: :scissors }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :rock
  end

  it 'knows ‘scissors’ is beaten by ‘rock’' do
    player_hash = { name: 'Player', action: :scissors }
    opponent_hash = { name: 'Opponent', action: :rock }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :rock
  end

  it 'knows ‘scissors’ beats ‘paper’' do
    player_hash = { name: 'Player', action: :scissors }
    opponent_hash = { name: 'Opponent', action: :paper }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :scissors
  end

  it 'knows ‘paper’ is beaten by ‘scissors’' do
    player_hash = { name: 'Player', action: :paper }
    opponent_hash = { name: 'Opponent', action: :scissors }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :scissors
  end

  it 'knows ‘paper’ beats ‘rock’' do
    player_hash = { name: 'Player', action: :paper }
    opponent_hash = { name: 'Opponent', action: :rock }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :paper
  end

  it 'knows ‘rock’ is beaten by ‘paper’' do
    player_hash = { name: 'Player', action: :rock }
    opponent_hash = { name: 'Opponent', action: :paper }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :paper
  end

  it 'knows ‘rock’ draws with ‘rock’' do
    player_hash = { name: 'Player', action: :rock }
    opponent_hash = { name: 'Opponent', action: :rock }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to be_nil
  end

  it 'knows ‘paper’ draws with ‘paper’' do
    player_hash = { name: 'Player', action: :paper }
    opponent_hash = { name: 'Opponent', action: :paper }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to be_nil
  end

  it 'knows ‘scissors’ draws with ‘scissors’' do
    player_hash = { name: 'Player', action: :scissors }
    opponent_hash = { name: 'Opponent', action: :scissors }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to be_nil
  end
end
