feature 'Choose between Rock, Paper, Scissors, Lizard, Spock' do
  scenario 'Dave choose rock, see rock' do
    dave_sign_in
    click_button('Rock')
    expect(page).to have_content 'Dave chose Rock'
  end

  scenario 'Dave choose paper, see paper' do
    dave_sign_in
    click_button('Paper')
    expect(page).to have_content 'Dave chose Paper'
  end

  scenario 'Jim choose scissors, see scissors' do
    jim_sign_in
    click_button('Scissors')
    expect(page).to have_content 'Jim chose Scissors'
  end

  scenario 'Dave choose lizard, see lizard' do
    dave_sign_in
    click_button('Lizard')
    expect(page).to have_content 'Dave chose Lizard'
  end

  scenario 'Dave choose Spock, see spock' do
    dave_sign_in
    click_button('Spock')
    expect(page).to have_content 'Dave chose Spock'
  end
end
