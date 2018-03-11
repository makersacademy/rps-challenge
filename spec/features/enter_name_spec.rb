feature 'enter player name' do

  scenario 'enter player names' do
    visit('/')
    fill_in 'player_name', with: 'oi'
    click_button 'Submit'
    expect(page).to have_text('OI')
  end

end
