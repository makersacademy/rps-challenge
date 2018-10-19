feature 'Pre-game options' do
  scenario 'User asked which game type they would like to play' do
    visit('/')
    expect(page).to have_content 'Which game type would you like to play?'
    expect(page).to have_selector(:link_or_button, 'RPS')
    expect(page).to have_selector(:link_or_button, 'RPSLS')
  end
end
