feature 'RPS' do
  scenario 'enter name on form and displays on next page' do
    visit '/'
    within 'form' do
      fill_in 'user_name', with: 'Anthony'
    end
    find_button('Start the game').click
    expect(page).to have_content('Anthony') 

  end
  scenario 'select a move option and page displays your choice' do
    play_game('scissors')
    expect(page).to have_content('Anthony chose scissors') 
  end

  scenario 'AI move is displayed' do
    srand(4)
    play_game('scissors')
    expect(page).to have_content('AI chose scissors') 
  end

  scenario 'AI game - both chose scissors' do
    srand(4)
    play_game('scissors')
    expect(page).to have_content('draw') 
  end

end
