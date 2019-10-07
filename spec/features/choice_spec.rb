feature 'Choice' do
  scenario 'rock, paper, scissors buttons are displayed' do
    sign_in_and_play

    expect(page).to have_selector(:button, 'Rock')
    expect(page).to have_selector(:button, 'Paper')
    expect(page).to have_selector(:button, 'Scissors')
  end

  scenario 'player selects rock' do
    sign_in_and_play
    click_button 'Rock'

    expect(page).to have_content("Alice's choice: Rock")
  end

  scenario 'player selects paper' do
    sign_in_and_play
    click_button 'Paper'

    expect(page).to have_content("Alice's choice: Paper")
  end

  scenario 'player selects scissors' do
    sign_in_and_play
    click_button 'Scissors'

    expect(page).to have_content("Alice's choice: Scissors")
  end

  scenario 'computer selects rock' do
    sign_in_and_play
    computer_choice("Rock")
    click_button 'Scissors'

    expect(page).to have_content("Computer's choice: Rock")
  end

  scenario 'computer selects paper' do
    sign_in_and_play
    computer_choice("Paper")
    click_button 'Rock'

    expect(page).to have_content("Computer's choice: Paper")
  end

  scenario 'computer selects scissors' do
    sign_in_and_play
    computer_choice("Scissors")
    click_button 'Paper'

    expect(page).to have_content("Computer's choice: Scissors")
  end
end
