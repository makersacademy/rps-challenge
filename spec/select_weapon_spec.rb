feature 'select weapon' do
  scenario 'choosing the weapon from list of options' do
    visit('/')
    fill_in :player_name, with: 'Zoe'
    click_button 'Submit'
    select 'rock', from: 'weapon'
    click_button 'Submit'
    expect(page).to have_content 'You have chosen :rock for this game!'
  end
end
