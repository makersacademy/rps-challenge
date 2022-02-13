feature "computer move" do
    scenario "Get confirmation what the computer has played" do
      sign_in_and_play
      click_button('Rock!')
      expect(page).to have_content('The computer chose')
    end
end