require './app.rb'

feature 'input name' do
    scenario 'user imputs their name' do
      visit ('/')
      fill_in "players_name", with: "Pip"
      click_button "Submit!"
      expect(page).to have_text "Welcome Pip"
    end

end
