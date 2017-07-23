feature 'Enter name' do
  scenario 'Submit player name' do
    visit '/'
    fill_in('player_name', with: 'Oleg ')
    click_button 'Play'
    expect(page).to have_content 'Oleg'
  end
end
