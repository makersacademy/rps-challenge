feature 'Pick a move' do
  background do
    enter_name_and_start_game
  end

  scenario 'pick rock' do
    click_button 'Rock!'
    expect(page).to have_content 'Halloumi picked rock.'
  end

  scenario 'pick paper' do
    click_button 'Paper!'
    expect(page).to have_content 'Halloumi picked paper.'
  end

  scenario 'pick scissors' do
    click_button 'Scissors!'
    expect(page).to have_content 'Halloumi picked scissors.'
  end
end
