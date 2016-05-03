feature 'Enter name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Luni vs. Computer'
  end
end

feature 'View points' do
  scenario 'see players points' do
    sign_in_and_play
    expect(page).to have_content 'Luni: 0 points'
  end

  scenario 'see computers points' do
    sign_in_and_play
    expect(page).to have_content 'Computer: 0 points'
  end
end

feature 'Weapons' do
  scenario 'show available weapons' do
  sign_in_and_play
  expect(page).to have_button('Rock')
  expect(page).to have_button('Paper')
  expect(page).to have_button('Scissors')
  end
end

feature 'Choosing a weapon' do
  scenario 'choose rock' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Luni chose rock'
  end

  scenario 'choose paper' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content 'Luni chose paper'
  end

  scenario 'choose scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Luni chose scissors'
  end
end
