require_relative '../../app.rb'

feature "game page" do

  scenario "allows user to select a weapon" do
    ['Rock', 'Paper', 'Scissors'].each do |weapon|
      sign_in_and_play
      choose weapon
      click_button 'Confirm Choice'
      expect(page).to_not have_content("Choose your weapon, Ed")
      expect(page).to have_content("You have chosen #{weapon}")
    end
  end

end
