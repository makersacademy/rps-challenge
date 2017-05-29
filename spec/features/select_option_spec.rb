feature 'Select a Choice' do
  scenario 'Player chooses choice rock' do
    sign_in_and_play
    click_button('rock')
    expect(page).not_to have_content('You have selected paper')
    expect(page).not_to have_content('You have selected scissors')
    expect(page).to have_content('You have selected rock')
  end
  scenario 'Player chooses choice paper' do
    sign_in_and_play
    click_button('paper')
    expect(page).not_to have_content('You have selected rock')
    expect(page).not_to have_content('You have selected scissors')
    expect(page).to have_content('You have selected paper')
  end
  scenario 'Player chooses choice rock' do
    sign_in_and_play
    click_button('scissors')
    expect(page).not_to have_content('You have selected rock')
    expect(page).not_to have_content('You have selected paper')
    expect(page).to have_content('You have selected scissors')
  end
end
