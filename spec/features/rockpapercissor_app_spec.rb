
feature "Testing the App" do

  scenario "Ask for a player name and save it" do
    visit '/'
    fill_in('player_name', with: 'JJ')
    click_button 'Submit'
    expect(page).to have_content 'JJ'
  end

  scenario "I want to be able to use Rock" do
    visit '/'
    fill_in('player_name', with: 'JJ')
    click_button 'Submit'
    expect(page).to have_content 'JJ'
    click_button 'Rock'
    expect(page).to have_content 'You decided to go for Rock'
  end
end
