require 'game'

describe Game do
  it 'is initialized with a name by default' do
    expect(subject.name).to eq "Player 1"
  end

end