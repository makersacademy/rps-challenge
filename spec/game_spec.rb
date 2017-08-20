require './lib/game'

describe Game do
  let(:pl_double) { double :player }
  subject { described_class.new(pl_double) }

  it 'initializes with a player' do
    expect(subject.player).to eq(pl_double)
  end

  it 'adds computer choice to outcome array' do
    array = [['Rock'], ['Paper'], ['Scissors']]
    expect(array).to include(subject.computer_choice)
  end

  it 'adds selection from player to outcome array' do
    subject.player_selection
    expect(subject.outcome).to include(subject.selection)
  end

  it 'returns true if the player wins' do
    subject.outcome = ['Scissors', 'Paper']
    expect(subject.win?).to eq true
  end

  it 'returns false if the player loses' do
    subject.outcome = ['Rock', 'Paper']
    expect(subject.win?).to eq false
  end

  it 'returns false if the player loses' do
    subject.outcome = ['Rock', 'Rock']
    expect(subject.win?).to eq("draw")
  end

end
