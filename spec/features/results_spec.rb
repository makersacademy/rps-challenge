feature 'Game results' do
  scenario 'Game finished' do
    enter_name_and_play
    click_button 'Rock'
    expect(page).to have_button('Play again')
  end

  # scenario 'Start again' do
  #   enter_name_and_play
  #   click_button 'Rock'
  #   click_button 'Play again'
  #   p "what is going on here"
  #   expect(page).to have_content('Kelly make your choice...')
  # end

  scenario 'quit' do
    enter_name_and_play
    click_button 'Rock'
    click_button 'Quit'
    expect(page).to have_content('Welcome to Rock, Paper, Scissors!')
  end
end
