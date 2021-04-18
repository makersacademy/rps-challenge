feature 'Your play' do
  scenario 'Shows player selection after player has selected rock' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content('You chose rock')
  end

  scenario 'Shows player selection after player has selected paper' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content('You chose paper')
  end

  scenario 'Shows player selection after player has selected scissors' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content('You chose scissors')
  end
end
