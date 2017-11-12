require './lib/computer.rb'

describe Computer do
  describe '#random_choice' do
    xit "text" do
      expect(subject.random_choice).to eq(:rock, :paper, :scissor)
    end
  end
end

# How to test this method? to check if it return one of this 3 values?
