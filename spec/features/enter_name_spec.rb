feature 'entering name' do
  scenario 'can submit name of player' do
    visit ('/')
  	fill_in :player_name, with: "Sophia"
	  click_button 'Submit'
    expect(page).to have_content "Sophia"
  end
end