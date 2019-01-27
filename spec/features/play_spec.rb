feature 'choose rock' do
  scenario 'should confirm choosing rock' do
    enter_name
    click_button 'Rock'
    expect(page).to have_content "Debora played Rock!"
  end
end

feature 'choose paper' do
  scenario 'should confirm choosing paper' do
    enter_name
    click_button 'Paper'
    expect(page).to have_content "Debora played Paper!"
  end
end

feature 'choose scissors' do
  scenario 'should confirm choosing scissors' do
    enter_name
    click_button 'Scissors'
    expect(page).to have_content "Debora played Scissors!"
  end
end

feature 'computer choice' do
  scenario 'should confirm computer choice' do
    enter_name
    srand(1)
    click_button 'Rock'
    expect(page).to have_content "Computer played Paper! COMPUTER WON!"
  end
end

feature 'play again' do
  scenario 'should confirm computer choice' do
    enter_name
    click_button 'Rock'
    click_button 'Play again'
    expect(page).to have_content "Debora, let's play!"
  end
end
