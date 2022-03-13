require 'turn_manager'

describe TurnManager do
  
  subject(:turn_manager) { TurnManager.new }

  it 'initialises with a turn of 0' do
    expect(subject.turn).to eq 0
  end

end