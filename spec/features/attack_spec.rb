feature 'playing vs computer' do
  scenario 'player choose Rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('Rock')
  end

  scenario 'computer choose Rock' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content('Rock')
  end

  scenario 'player and computer choose rock' do
    sign_in_and_play
    srand(0)
    click_button 'Rock'
    expect(page).to have_content('Draw')
  end
end
