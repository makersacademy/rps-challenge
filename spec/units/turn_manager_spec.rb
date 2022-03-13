require 'turn_manager'

describe TurnManager do
  
  subject(:turn_manager) { TurnManager.new }

  it 'initialises with a turn of 0' do
    expect(subject.turn).to eq 0
  end

  it 'changes player turn to 1' do
    expect {subject.change_turn }.to change { subject.turn }.by(1)
  end

  it 'resets player turnt to 0' do
    subject.change_turn
    subject.reset_turns
    expect(subject.turn).to eq 0
  end
end