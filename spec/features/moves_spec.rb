feature 'Making a move' do
  scenario 'Player is given the option to choose rock' do
    sign_in_and_play
    click_button "Let's go!"
    expect(page).to have_button 'Rock'
  end
  scenario 'Player is given the option to choose paper' do
    sign_in_and_play
    click_button "Let's go!"
    expect(page).to have_button 'Paper'
  end
  scenario 'Player is given the option to choose scissors' do
    sign_in_and_play
    click_button "Let's go!"
    expect(page).to have_button 'Scissors'
  end 
end
