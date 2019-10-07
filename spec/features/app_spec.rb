feature 'Game' do 
  scenario 'enter player name in form and see name displayed' do 
    sign_in_and_play
    expect(page).to have_content('Lauren') 
  end

  scenario 'provides rock button' do 
    sign_in_and_play
    expect(page).to have_button('Rock')
  end 

  scenario 'provides paper button' do 
    sign_in_and_play
    expect(page).to have_button('Paper')
  end 

  scenario 'provides scissors button' do 
    sign_in_and_play
    expect(page).to have_button('Scissors')
  end 

  scenario 'says what you played' do 
    sign_in_and_play
    click_button 'Rock'
    click_button 'Rock'
    expect(page).to have_content('played Rock')
  end

  scenario 'redirects to select game with player 2 name' do 
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Make your move')
  end 

  it 'goes back to the beginning after full game' do 
    sign_in_and_play
    click_button('Rock')
    click_button('New game')
    expect(page).to have_content("Enter player one's name")
  end 

  it 'goes back to the play screen when press rematch' do 
    sign_in_and_play
    click_button('Rock')
    click_button('Rock')
    click_button('Rematch')
    expect(page).to have_content("Make your move")
  end
end
