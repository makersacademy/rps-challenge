feature 'Choice' do
  scenario 'rock, paper, scissors buttons are displayed' do
    visit('/')
    fill_in 'player_name', with: 'Alice'
    click_button 'Submit'

    expect(page).to have_selector(:button, 'Rock')
    expect(page).to have_selector(:button, 'Paper')
    expect(page).to have_selector(:button, 'Scissors')
  end

  scenario 'player select rock' do
    visit('/')
    fill_in 'player_name', with: 'Alice'
    click_button 'Submit'
    click_button 'Rock'

    expect(page).to have_content("Alice's choice: Rock")
  end

  scenario 'player select paper' do
    visit('/')
    fill_in 'player_name', with: 'Alice'
    click_button 'Submit'
    click_button 'Paper'

    expect(page).to have_content("Alice's choice: Paper")
  end

  scenario 'player select scissors' do
    visit('/')
    fill_in 'player_name', with: 'Alice'
    click_button 'Submit'
    click_button 'Scissors'

    expect(page).to have_content("Alice's choice: Scissors")
  end
end
