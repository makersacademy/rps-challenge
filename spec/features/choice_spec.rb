feature 'Choice' do
  scenario 'rock, paper, scissors buttons are displayed' do
    sign_in_and_play

    expect(page).to have_selector(:button, 'Rock')
    expect(page).to have_selector(:button, 'Paper')
    expect(page).to have_selector(:button, 'Scissors')
  end

  scenario 'player select rock' do
    sign_in_and_play
    click_button 'Rock'

    expect(page).to have_content("Alice's choice: Rock")
  end

  scenario 'player select paper' do
    sign_in_and_play
    click_button 'Paper'

    expect(page).to have_content("Alice's choice: Paper")
  end

  scenario 'player select scissors' do
    sign_in_and_play
    click_button 'Scissors'

    expect(page).to have_content("Alice's choice: Scissors")
  end
end
