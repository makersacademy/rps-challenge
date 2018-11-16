feature 'game set up' do
  scenario 'user enters root page and sees message' do
    visit('/')
    expect(page).to have_content "Welcome to the game (it's Rock, Paper, Scissors BTW)!"
  end
  scenario 'user enters name and submits' do
    visit('/')
    fill_in('player_1_name', with: "Aaron")
    click_button("Submit")
    expect(page).to have_content "Player 1 name: Aaron"
  end

  
end
