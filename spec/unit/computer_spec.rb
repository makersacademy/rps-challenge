require 'computer'

describe Computer do
  subject(:ai) { described_class.new }

  it 'is is called computer' do
    expect(ai.name).to eq 'Computer'
  end

  describe '#move_choice' do
    it 'selects a move' do
      valid = [:rock, :paper, :scissors]
      ai.move_choice
      expect(valid).to include(ai.choice)
    end
  end
end
