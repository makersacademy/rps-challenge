require 'pry'

  feature 'Entering player names' do
    scenario 'Player enters name at start and has name displayed against opponent/computer' do
      sign_in_and_play
      expect(page).to have_content("Teddy")
    end
  end

  feature 'Taking a turn' do
    scenario 'The player selects one of Rock / Paper / Scissors as a weapon' do
      sign_in_and_play
      expect(page).to have_field("weapon")
    end
  end

  feature 'Winner declared' do
    scenario 'A player wins the round' do
      sign_in_and_play
      fill_in("weapon", :with => :rock)
      click_button("Submit")
      expect(page).to have_content("WINNER DECLARED")
    end
  end
