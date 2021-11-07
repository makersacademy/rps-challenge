require 'ai'

describe Ai do

  describe '#random_choice' do
    it 'returns a random choice' do
      expect(["rock","paper","scissors"]).to include(subject.random_choice)
    end
  end


end