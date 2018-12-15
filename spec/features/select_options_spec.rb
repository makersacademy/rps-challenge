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
  scenario 'choosing rock' do
    sign_in_and_play
    choose 'rock'
    click_button 'Go!'
    expect(page).to have_content('Gon chose Rock')
  end
end
