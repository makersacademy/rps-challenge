feature 'enter names' do
  scenario 'players can enter their name' do
    sign_in_and_play
    expect(page).to have_content 'Thady vs. The Machine'
  end
end

feature 'player name required' do
  scenario 'players have to enter a name to start' do
    visit '/'
    click_button 'Submit'
    expect(page).to have_content 'Sign in to play'
  end
end
