require './lib/player'

describe Player do

  describe "#chooses" do
    it'returns an error if the user chooses an element outside of the game' do
      element = :abc
      expect{subject.chooses :element}.to raise_error 'No such element in the rules'
    end
  end

end