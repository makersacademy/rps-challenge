describe 'Rock Paper scissors app' do
  feature 'player can enter a name' do
    it 'allows a player to enter a name succesfully' do
      name = 'Hal 9000'
      visit '/'
      fill_in 'player_name', :with => name
      click_on 'Submit'
      expect(page).to have_content "Hi #{name}"
    end
  end
end
