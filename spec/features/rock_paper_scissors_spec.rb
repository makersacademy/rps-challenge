feature 'RockPaperScissors' do
  feature 'entering name' do
    scenario 'can enter name and view it on the next page' do
      visit '/'
      fill_in 'player_name', with: 'Filbert'
      click_button('Submit')
      expect(page).to have_content('Filbert')
    end
  end
end