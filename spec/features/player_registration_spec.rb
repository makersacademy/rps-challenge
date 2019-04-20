feature 'player registration' do
  scenario 'players can sign in before playing rps' do
    visit '/'
    fill_in 'player_name', with: 'Ayelisha'
    click_button 'Submit'
    expect(page).to have_content "Ayelisha"
  end
end
