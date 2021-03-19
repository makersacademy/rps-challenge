require_relative '../../lib/app'

describe RockPaperScissors do
  describe "The Homepage", type: :feature do
    before do
      sign_in_and_play
    end
    it "Shows the entered name" do
      expect(page).to have_text "Caesar"
    end
    it "Allows the user to choose from Rock, Paper and Scissors" do
      select 'Rock', from: 'choose_turn'
      click_on 'submit'
      expect(page).to have_text "You chose Rock"
    end
  end
end
