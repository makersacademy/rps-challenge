describe RPS do
  feature "#index.erb" do
    scenario "should allow the players to enter their names and a game type" do
      visit '/'
      fill_in 'player1', with: 'Gordon'
      fill_in 'player2', with: 'Caroline'
      choose('rps')
      click_button 'Submit'
      expect(page).to have_content('Gordon vs. Caroline')
    end
  end
end
