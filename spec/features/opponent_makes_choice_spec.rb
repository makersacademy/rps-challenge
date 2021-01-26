feature 'Opponent makes choice' do
  scenario 'Player has selected option' do
    enter_name_and_play
    click_button 'Rock'
    expect(page).to have_content('Computer chose')
  end
end
