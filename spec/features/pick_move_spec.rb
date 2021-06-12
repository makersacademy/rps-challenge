feature 'Pick a move' do
  background do
    enter_name_and_start_game
  end

  scenario 'pick rock' do
    click_button 'Rock!'

    expect(page).to have_content 'You picked rock.'
  end

  scenario 'pick paper' do
    click_button 'Paper!'

    expect(page).to have_content 'You picked paper.'
  end

  scenario 'pick scissors' do
    click_button 'Scissors!'

    expect(page).to have_content 'You picked scissors.'
  end
end
