require 'round'

describe Round do
  it 'knows ‘rock’ is covered by ‘paper’' do
    player_hash = { name: 'Player', action: :rock }
    opponent_hash = { name: 'Opponent', action: :paper }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :paper
  end

  it 'knows ‘rock’ crushes ‘scissors’' do
    player_hash = { name: 'Player', action: :rock }
    opponent_hash = { name: 'Opponent', action: :scissors }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :rock
  end

  it 'knows ‘rock’ crushes ‘lizard’' do
    player_hash = { name: 'Player', action: :rock }
    opponent_hash = { name: 'Opponent', action: :lizard }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :rock
  end

  it 'knows ‘rock’ is vapourised by ‘spock’' do
    player_hash = { name: 'Player', action: :rock }
    opponent_hash = { name: 'Opponent', action: :spock }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :spock
  end

  it 'knows ‘paper’ covers ‘rock’' do
    player_hash = { name: 'Player', action: :paper }
    opponent_hash = { name: 'Opponent', action: :rock }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :paper
  end

  it 'knows ‘paper’ is cut by ‘scissors’' do
    player_hash = { name: 'Player', action: :paper }
    opponent_hash = { name: 'Opponent', action: :scissors }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :scissors
  end

  it 'knows ‘paper’ is eaten by ‘lizard’' do
    player_hash = { name: 'Player', action: :paper }
    opponent_hash = { name: 'Opponent', action: :lizard }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :lizard
  end

  it 'knows ‘paper’ disproves ‘spock’' do
    player_hash = { name: 'Player', action: :paper }
    opponent_hash = { name: 'Opponent', action: :spock }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :paper
  end

  it 'knows ‘scissors’ is crushed by ‘rock’' do
    player_hash = { name: 'Player', action: :scissors }
    opponent_hash = { name: 'Opponent', action: :rock }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :rock
  end

  it 'knows ‘scissors’ cuts ‘paper’' do
    player_hash = { name: 'Player', action: :scissors }
    opponent_hash = { name: 'Opponent', action: :paper }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :scissors
  end

  it 'knows ‘scissors’ decapitates ‘lizard’' do
    player_hash = { name: 'Player', action: :scissors }
    opponent_hash = { name: 'Opponent', action: :lizard }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :scissors
  end

  it 'knows ‘scissors’ is smashed by ‘spock’' do
    player_hash = { name: 'Player', action: :scissors }
    opponent_hash = { name: 'Opponent', action: :spock }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :spock
  end

  it 'knows ‘lizard’ is crushed by ‘rock’' do
    player_hash = { name: 'Player', action: :lizard }
    opponent_hash = { name: 'Opponent', action: :rock }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :rock
  end

  it 'knows ‘lizard’ eats ‘paper’' do
    player_hash = { name: 'Player', action: :lizard }
    opponent_hash = { name: 'Opponent', action: :paper }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :lizard
  end

  it 'knows ‘lizard’ is decapitated by ‘scissors’' do
    player_hash = { name: 'Player', action: :lizard }
    opponent_hash = { name: 'Opponent', action: :scissors }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :scissors
  end

  it 'knows ‘lizard’ poisons ‘spock’' do
    player_hash = { name: 'Player', action: :lizard }
    opponent_hash = { name: 'Opponent', action: :spock }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :lizard
  end

  it 'knows ‘spock’ vapourises ‘rock’' do
    player_hash = { name: 'Player', action: :spock }
    opponent_hash = { name: 'Opponent', action: :rock }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :spock
  end

  it 'knows ‘spock’ is disproved by ‘paper’' do
    player_hash = { name: 'Player', action: :spock }
    opponent_hash = { name: 'Opponent', action: :paper }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :paper
  end

  it 'knows ‘spock’ smashes ‘scissors’' do
    player_hash = { name: 'Player', action: :spock }
    opponent_hash = { name: 'Opponent', action: :scissors }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :spock
  end

  it 'knows ‘spock’ is poisoned by ‘lizard’' do
    player_hash = { name: 'Player', action: :spock }
    opponent_hash = { name: 'Opponent', action: :lizard }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to equal :lizard
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

  it 'knows ‘lizard’ draws with ‘lizard’' do
    player_hash = { name: 'Player', action: :lizard }
    opponent_hash = { name: 'Opponent', action: :lizard }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to be_nil
  end

  it 'knows ‘spock’ draws with ‘spock’' do
    player_hash = { name: 'Player', action: :spock }
    opponent_hash = { name: 'Opponent', action: :spock }
    round = described_class.new player_hash, opponent_hash
    expect(round.winning_action).to be_nil
  end
end
