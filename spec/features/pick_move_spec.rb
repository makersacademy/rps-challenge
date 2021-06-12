feature 'Pick a move' do
  background do
    enter_name_and_start_game
  end

  scenario 'pick rock' do
    click_button 'Rock'
    
    expect(page).to have_content 'You picked Rock.'
  end


end