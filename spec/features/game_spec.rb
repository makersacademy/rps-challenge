feature 'clickable buttons' do
  scenario 'choose rock' do
    enter_names
    click_button 'Rock'
    expect(page).to have_content "Pinky chose rock"
  end

  scenario 'choose paper' do
    enter_names
    click_button 'Paper'
    expect(page).to have_content "Pinky chose paper"
  end

  scenario 'choose scissors' do
    enter_names
    click_button 'Scissors'
    expect(page).to have_content "Pinky chose scissors"
  end

  scenario 'choose lizard' do
    enter_names
    click_button 'Lizard'
    expect(page).to have_content "Pinky chose lizard"
  end

  scenario 'choose spock' do
    enter_names
    click_button 'Spock'
    expect(page).to have_content "Pinky chose spock"
  end
end
    