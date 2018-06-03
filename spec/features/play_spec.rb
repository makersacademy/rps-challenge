feature 'play the game' do
  scenario 'see RPS options' do
    sign_in_and_play
    expect(page).to have_button ('Rock')
    expect(page).to have_button ('Paper')
    expect(page).to have_button ('Scissors')
  end

  scenario 'choose Rock option' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('You selected Rock!')
  end

  scenario 'choose Paper option' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content('You selected Paper!')
  end

  scenario 'choose Scissors option' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content('You selected Scissors!')
  end

  scenario 'cpu chooses rock' do
    sign_in_and_play
    click_button 'Rock'
    # message = find(:css, "#cpu").text
    # expect(cpu_options).to include message
    expect(page).to have_content('CPU selected Rock')
  end
end
