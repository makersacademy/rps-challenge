feature 'The players can select an RPS option and see the result' do
  scenario 'The player selects an option and sees what they chose' do
    sign_into_the_game
    click_button 'Single Player RPS'
    click_button 'Rock'
    expect(page).to have_content 'You selected Rock'
  end

  scenario 'The computer will make a choice and this will also be shown' do
    sign_into_the_game
    click_button 'Single Player RPS'
    click_button 'Rock'
    expect(page).to have_content 'The computer selected'
  end

  scenario 'If the player wins then a message is displayed' do
    sign_into_the_game
    click_button 'Single Player RPS'
    allow_any_instance_of(Player).to receive(:rand).and_return(3)
    click_button 'Rock'
    expect(page).to have_content 'James has won!!!'
  end

  scenario 'If the player loses then a message is displayed' do
    sign_into_the_game
    click_button 'Single Player RPS'
    allow_any_instance_of(Player).to receive(:rand).and_return(2)
    click_button 'Rock'
    expect(page).to have_content 'Unlucky, Computer has beaten you :( !!!'
  end

  scenario 'If the player draws then a message is displayed' do
    sign_into_the_game
    click_button 'Single Player RPS'
    allow_any_instance_of(Player).to receive(:rand).and_return(1)
    click_button 'Rock'
    expect(page).to have_content 'It was a draw!!!'
  end
end
