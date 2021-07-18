feature 'choice' do
  scenario 'can choose rock' do
    begin_game
    choose_rock
    expect(page).to have_content 'You chose Rock'
  end

  scenario 'can choose paper' do
    begin_game
    choose 'paper'
    click_button 'Submit'
    expect(page).to have_content 'You chose Paper'
  end

  scenario 'can choose scissors' do
    begin_game
    choose 'scissors'
    click_button 'Submit'
    expect(page).to have_content 'You chose Scissors'
  end
end
