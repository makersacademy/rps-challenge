require 'game'

describe Game do
  
  subject{ Game.new('Luke') }

  it 'should have a list of choices' do
    expect(subject.computer_choices).to eq(["Rock", "Paper", "Scissors"]) 
  end

  describe '#computer_choice' do
    it 'should choose an option from the list' do
      allow(subject.computer_choices).to receive(:sample) {"Rock"}
      expect(subject.computer_choice).to eq("Rock")
    end

    it 'should be 1 of 3 options in the array' do
      expect(subject.computer_choices).to include(subject.computer_choice)
  end
end
end
