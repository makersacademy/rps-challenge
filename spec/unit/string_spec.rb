require 'helpers/string'

describe StringHelpers do
  include StringHelpers

  it 'returns the right message' do
    player = 'Egbert'

    expect(victory_string(-1, player)).to eq('Egbert wins!')
    expect(victory_string(1, player)).to eq('Robot wins!')
    expect(victory_string(0, player)).to eq('Draw!')
  end

  it 'returns the right comparator' do
    expect(comparator_string(-1)).to eq('>')
    expect(comparator_string(1)).to eq('<')
    expect(comparator_string(0)).to eq('==')
  end
end
