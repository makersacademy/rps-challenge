feature 'Choose weapon' do
  scenario 'Player chooses rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock'
  end
end
