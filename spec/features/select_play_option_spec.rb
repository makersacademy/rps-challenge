feature 'select play option' do
  scenario 'shows player selection after player has selected rock' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content('you chose rock')
  end

  scenario 'shows player selection after player has selected paper' do
    sign_in_and_play
    click_button 'paper'
    expect(page).to have_content('you chose paper')
  end

  scenario 'shows player selection after player has selected scissors' do
    sign_in_and_play
    click_button 'scissors'
    expect(page).to have_content('you chose scissors')
  end
end