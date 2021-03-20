require_relative '../../app'

describe RockPaperScissors do
  describe "Playing with a virtual opponent", type: :feature do
    before do
      sign_in_and_play_virtual
    end
    it "Shows the entered name" do
      expect(page).to have_text "Caesar"
    end
    it "Allows the user to choose from Rock, Paper and Scissors" do
      rock_turn
      expect(page).to have_text "you chose Rock"
    end
    it 'Declares a winner' do
      rock_turn
      expect(page).to have_text "The winner"
    end
  end

  describe "Playing with a real opponent", type: :feature do
    before do
      sign_in_and_play_real
    end
    it 'Allows the user to enter the name of a real opponent' do
      expect(page).to have_text "Player 2, enter your name"
    end
    it 'Allows a second opponent to input their turn' do
      player2_sign_in
      expect(page).to have_text "Bart, choose"
    end
  end
end
