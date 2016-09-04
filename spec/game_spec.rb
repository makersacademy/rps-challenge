require 'game'


describe Game do
  subject(:game) {described_class.new}


  describe '#set_player_choice' do
    scenario 'players choice from interface is set' do
     expect(game.set_player_choice(1)).to eq 1
    end
  end

  describe '#generate_computer_choice(rand_choice)' do
    scenario 'computer generates rand_choice 0' do
      allow(game).to receive(:rand_choice).and_return(1)
      expect(game.generate_computer_choice(game.rand_choice)).to eq "Rock"
    end

    scenario 'computer generates rand_choice 1' do
      allow(game).to receive(:rand_choice).and_return(2)
      expect(game.generate_computer_choice(game.rand_choice)).to eq "Paper"
    end

    scenario 'computer generates rand_choice 2' do
      allow(game).to receive(:rand_choice).and_return(3)
      expect(game.generate_computer_choice(game.rand_choice)).to eq "Scissors"
    end

  end


end
