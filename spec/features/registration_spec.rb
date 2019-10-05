feature 'name registration' do
  context 'on the index page' do
    scenario 'User enters name' do
      name = "Kevin"
      visit('/')
      fill_in("player_name", with: name)
      click_button("Go!")
      expect(page).to have_content(name)
    end
  end
end