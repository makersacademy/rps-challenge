require 'game'

describe Game do

  it 'Player selects rock' do
    subject.rock
    expect(subject).to eq rock
  end
end
