feature 'Player to enter their name' do
  scenario '- enter their name' do
    visit '/'
    fill_in :player_name, with: 'Jane'
    click_button 'Sign In'
    expect(page).to have_content 'Player 1: Jane'
  end
end
