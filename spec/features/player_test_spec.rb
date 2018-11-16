feature 'entering a player name' do
  scenario 'player name will be displayed' do
    visit '/'
    fill_in 'player_1', with: 'Ajay'
    click_button 'Submit'
    expect(page).to have_content 'Ajay vs CPU'
  end
end
