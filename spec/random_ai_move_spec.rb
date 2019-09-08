require './lib/random_ai_move'

describe RandomAiMove do
  it 'returns a move from the given list' do
    expect(subject.choose_move('id', [:rock])).to eq :rock
  end
end