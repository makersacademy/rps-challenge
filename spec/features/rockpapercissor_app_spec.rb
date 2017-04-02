

feature "Testing the App" do

  scenario "Ask for a player name and save it" do
    visit '/'
    fill_in('player_name', with: 'JJ')
    click_button 'Submit'
    expect(page).to have_content 'JJ'
  end


end
