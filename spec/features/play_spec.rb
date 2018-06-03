feature 'play the game' do
  scenario 'see RPS options' do
    sign_in_and_play
    expect(page).to have_button ('Rock')
    expect(page).to have_button ('Paper')
    expect(page).to have_button ('Scissors')
  end

  scenario 'choose RPS option' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('You selected Rock!')
  end

  scenario 'choose RPS option' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content('You selected Paper!')
  end

  scenario 'choose RPS option' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content('You selected Scissors!')
  end
end
