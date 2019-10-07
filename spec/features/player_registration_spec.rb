feature 'player registration' do
  scenario 'players can sign in before playing rps' do
    visit '/'
    fill_in 'player_one', with: 'Ayelisha'
    fill_in 'player_two', with: 'Elliott' 
    click_button 'Submit'
    expect(page).to have_content "Ayelisha's turn"
  end
end
