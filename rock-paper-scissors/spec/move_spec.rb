require 'move'

describe Move do

  subject(:move)    { described_class.new(choice) }
  let(:choice)      { :choice }

  describe '#initialize' do
    it 'Sets up with an array of correct answers' do
      expect(move.options).to eq ["rock","scissors","paper"]
    end
    it 'Initializes with an answer' do
      expect(move.choice).to eq choice
    end
  end

  describe '#valid?' do
    it 'Checks that the answer is valid' do
      move = Move.new("roc")
      expect(move).not_to be_valid
    end
  end


end
