require 'player'

describe Player do

  subject(:player) { Player.new }

  it 'has options when created' do
    expect(player.selection).not_to be_empty
  end

  it 'has 3 options to choose from' do
    expect(player.selection).to eq ["rock", "paper", "scissors" ]
  end

  it { is_expected.to respond_to(:user_choice).with(1).argument }

    describe '#user_choice' do

      it 'can select rock as an option' do
        expect(player.choice("rock")).to eq "rock"
      end

      it 'can select paper as an option' do
        expect(player.choice("paper")).to eq "paper"
      end

      it 'can select scissors as an option' do
        expect(player.choice("scissors")).to eq "scissors"
      end

      it 'raises error if no option is selected' do
        expect { player.choice("banana") }.to raise_error "You have not made a valid selection"
      end

    end


  xit { is_expected.to respond_to :lost? } # here? or define in player class?


end
