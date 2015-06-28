require 'player'

describe Player do

  it 'has options when created' do
    expect(subject.options).not_to be_empty
  end

  it 'has 3 options to choose from' do
    expect(subject.options).to eq ["rock", "paper", "scissors" ]
  end


  it { is_expected.to respond_to(:choice).with(1).argument }

    describe '#choice' do

      it 'can select rock as an option' do
        # subject.selection(:rock)
        expect(subject.choice("rock")).to eq "rock"
      end

      it 'can select paper as an option' do
        expect(subject.choice("paper")).to eq "paper"
      end

      it 'can select scissors as an option' do
        expect(subject.choice("scissors")).to eq "scissors"
      end

      it 'raises error if no option is selected' do
        expect { subject.choice("banana") }.to raise_error "You have not made a valid selection"
      end

    end


  # describe '#bill_total' do
  #
  #   it 'updates order total when adding single dish' do
  #     subject.add_dish('California roll', 1)
  #     expect(subject.bill_total).to eq 4.0
  #   end
  #
  #   it 'updates order total when adding more than a single dish' do
  #     subject.add_dish('California roll', 2)
  #     expect(subject.bill_total).to eq 8.0
  #   end
  #
  # end

  xit { is_expected.to respond_to :lost? }


  # context - choice/selection

  xit 'can choose one of 3 options'
  # I want the player to be able to choose different options - rock, paper, scissors

  # OR

  xit 'can choose can select/choose rock'

  xit 'can choose can select/choose rock'

  xit 'can choose can select/choose rock'

end
