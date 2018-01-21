feature 'Weapon Choice' do
  scenario 'choose Rock' do
    sign_in
    choose('rock')
    click_button 'Submit'
    expect(page).to have_content('Rock')
  end

  scenario 'choose Scissors' do
    sign_in
    choose('scissors')
    click_button 'Submit'
    expect(page).to have_content('Scissors')
  end

  scenario 'choose Paper' do
    sign_in
    choose('paper')
    click_button 'Submit'
    expect(page).to have_content('Paper')
  end

  scenario 'choose Lizard' do
    sign_in
    choose('lizard')
    click_button 'Submit'
    expect(page).to have_content('Lizard')
  end

  scenario 'choose Spock' do
    sign_in
    choose('spock')
    click_button 'Submit'
    expect(page).to have_content('Spock')
  end

end
