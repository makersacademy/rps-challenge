feature 'player enters game' do
  scenario 'player fills in name and sees welcome message' do
    visit('/')
    fill_in 'name', with:'Nigel'
    click_button 'go'
    expect(page).to have_content "Welcome Nigel! Let's start the game."
  end
end