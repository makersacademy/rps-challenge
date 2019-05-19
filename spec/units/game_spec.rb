describe Game do

  it 'remembers the player\'s choice' do
    subject = Game.new('rock')
    expect(subject.player_choice).to eq('rock')
  end

  it 'has a random_move method' do
    subject = Game.new('rock')
    expect(subject).to respond_to(:random_move)
  end

  it 'has options to choose from' do
    subject = Game.new('rock')
    expect(subject.options).to eq(["rock", "paper", "scissors"])
  end

  it 'chooses a random move' do
    subject = Game.new('rock')
    expect(subject.options).to include(subject.game_choice)
  end
end
