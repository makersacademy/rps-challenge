feature 'Player takes turn' do
  
  scenario 'the player can correctly select an option' do
    register
    click_button 'Rock'
    expect(page).to have_content 'Your choice: Rock'
    expect(page).not_to have_content 'Your choice: Scissors'
    expect(page).not_to have_content 'Your choice: Paper'
  end

  xscenario 'player chooses Rock, computer Scissors' do
    register
    click_button 'Rock'
    allow(Computer).to receive(:weapon).and_return(:rock)
    expect(page).to have_content 'You win! Rock blunts scissors'
  end
end
