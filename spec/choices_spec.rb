require 'choices'

describe Choices do

  subject(:choices) {described_class.new}
  let(:rock) {"Rock"}
  let(:paper) {"Paper"}

  describe '#initialize' do
    it 'populates choices with game items' do
      expect(choices.list).not_to be_empty
    end
  end

  describe '#random_choice' do
    it 'return random choice' do
      expect(choices.list).to receive(:sample)
      choices.random_choice
    end
  end

  describe '#game_size' do
    it 'returns the correct amount of options in list' do
    expect(choices.list).to receive(:length)
    choices.game_size
    end
  end



end
