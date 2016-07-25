require 'game'

describe Game do

  subject(:game) { described_class.new(options) }
  let(:options) { { "player" => "Pip", "player_choice" => :Rock, "computer_choice" => :Rock} }

  describe '#player' do
    it 'stores the name of the player' do
      expect(game.player).to eq "Pip"
    end
  end

  describe '#player_choice' do
    it 'returns the players choice' do
      expect(game.player_choice).to eq :Rock
    end
  end

  describe '#computer_choice' do
    it 'returns the computers choice' do
      expect(game.computer_choice).to eq :Rock
    end
  end

 context 'result' do

   before do
     srand(0)
   end

   describe '#win?' do
     it 'returns true if player wins' do
       click_link "Paper"
       expect(game.win?).to have_content "You win!"
     end
   end
   it 'returns false if player doesnt win' do
     click_link "Scissors"
     expect(game.lose?).to have_content "You lose!"
   end

   it 'returns draw if player draws' do
     click_link "Rock"
     expect(game.draw?).to have_content "You draw!"
   end

 end

end
