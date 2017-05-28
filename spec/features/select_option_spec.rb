feature 'Select a Choice' do
  scenario 'Player chooses choice Rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).not_to have_content('You have selected Paper')
    expect(page).not_to have_content('You have selected Scissors')
    expect(page).to have_content('You have selected Rock')
  end
  scenario 'Player chooses choice Paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).not_to have_content('You have selected Rock')
    expect(page).not_to have_content('You have selected Scissors')
    expect(page).to have_content('You have selected Paper')
  end
  scenario 'Player chooses choice Rock' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).not_to have_content('You have selected Rock')
    expect(page).not_to have_content('You have selected Paper')
    expect(page).to have_content('You have selected Scissors')
  end
end
