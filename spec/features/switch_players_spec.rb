feature 'Players can switch turns' do
  scenario 'Seeing the current turn' do
    sign_in_and_play
    expect(page).to have_content 'Name One please choose your weapon (choose wisely!):'
  end

  scenario 'Seeing the current turn' do
    sign_in_and_play
    click_button 'rock'
    click_button 'OK'
    expect(page).to have_content 'Name Two please choose your weapon (choose wisely!):'
  end
end
