require 'game'

describe Game do
  
  let(:player) { double :player, :name => 'Luke' }
  subject{ Game.new(player) }

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

  describe '#result' do
    context '#if player wins' do
      it 'should calculate the result' do
        expect(subject.result("Rock", "Scissors")).to eq("Luke wins!")
      end
    end

    context '#if it\'s a draw' do
      it 'should calculate the result' do
        expect(subject.result("Paper", "Paper")).to eq("It's a draw!")
      end
    end

    context '#if computer wins' do
      it 'should calculate the result' do
        expect(subject.result("Rock", "Paper")).to eq("Computer wins!")
      end
    end
  end
end
