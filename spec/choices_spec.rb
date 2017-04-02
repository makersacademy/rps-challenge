require 'choices'

describe Choices do

  subject(:choices) {described_class.new}

  describe '#initialize' do
    it 'populates choices with game items' do
      expect(choices.list).not_to be_empty
    end
  end

  describe '#random_choice' do
    it 'return random choice' do
      expect(choices).to receive(:random_choice)
      choices.random_choice
    end
  end

end
