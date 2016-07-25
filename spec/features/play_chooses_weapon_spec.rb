feature 'Choose weapon' do
  scenario 'Player chooses rock' do
    sign_in_and_play
    choose('rock')
    click_button("Let's go!")
    expect(page).to have_content 'You chose rock'
  end
  scenario 'Player chooses paper' do
    sign_in_and_play
    choose('paper')
    click_button("Let's go!")
    expect(page).to have_content 'You chose paper'
  end
  scenario 'Player chooses scissors' do
    sign_in_and_play
    choose('scissors')
    click_button("Let's go!")
    expect(page).to have_content 'You chose scissors'
  end
end
