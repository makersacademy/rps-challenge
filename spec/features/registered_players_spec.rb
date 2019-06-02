feature 'user to registered their name' do
  scenario 'can submit name to the screen' do
    visit('/register')
    fill_in :registeredplayer1, with: 'Helen'
    fill_in :registeredplayer2, with: 'Emma'
    click_button 'Register'
    expect(page).to have_content 'Thank you for registering to play Helen and Emma!'
  end
end