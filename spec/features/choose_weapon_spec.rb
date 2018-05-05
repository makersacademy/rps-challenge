feature 'Choosing a weapon' do
  scenario 'choosing "Rock" and getting confirmation' do
    visit('/')
    fill_in :player_name, with: 'Dione'
    click_button 'Submit'
    click_link('Rock')
    expect(page).to have_text('You chose Rock!')
  end
end
