feature 'Register player' do
  describe 'When player enters their name and selects submit' do
    scenario 'Should display their name' do
      player_name = 'Simon'

      visit('/')

      fill_in("name_input", with: player_name)

      click_button("play")

      expect(page.find_by_id('player_name')).to have_content(player_name) 
    end
  end
end
