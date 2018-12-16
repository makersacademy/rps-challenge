feature 'Viewing moves' do
  background { sign_in_and_play }

  scenario 'seeing rock' do
    expect(page).to have_content('Rock')
  end

  scenario 'seeing paper' do
    expect(page).to have_content('Paper')
  end

  scenario 'seeing scissors' do
    expect(page).to have_content('Scissors')
  end
end

feature 'Selecting move' do
  background { sign_in_and_play }

  scenario 'choosing rock' do
    choose 'rock'
    click_button 'Go!'
    expect(page).to have_content('Gon chose Rock')
  end

  scenario 'choosing paper' do
    choose 'paper'
    click_button 'Go!'
    expect(page).to have_content('Gon chose Paper')
  end

  scenario 'choosing scissors' do
    choose 'scissors'
    click_button 'Go!'
    expect(page).to have_content('Gon chose Scissors')
  end

  scenario 'CPU picks a move at random' do
    choose 'rock'
    srand(2)
    click_button 'Go!'

    expect(page).to have_content('CPU chose Rock')
  end
end
