feature "End game message" do
    scenario "Gives message to end game" do
      visit ('/')
      fill_in :player_1_name, with: 'Adam'
      click_button 'Submit'
      page.choose "Rock"
      click_button 'Submit'
      expect(page).to have_content "The Result is:"
    end
end
