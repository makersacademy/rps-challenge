feature 'Rematch' do
  scenario 'click button for rematch with CPU' do
    enter_name_and_start_game
    click_button 'Rock!'
    click_button 'Rematch!'
    expect(page).to have_content 'What is your move?'
  end

  scenario 'click button for rematch with Player 2' do
    enter_names_and_start_multiplayer
    click_button 'Rock!'
    click_button 'Scissors!'
    click_button 'Rematch!'
    expect(page).to have_content 'What is your move?'
  end
end
