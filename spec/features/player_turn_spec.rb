feature 'Player takes turn' do

  scenario 'the player can correctly select an option' do
    register
    click_button 'Rock'
    expect(page).to have_content 'You chose: Rock'
    expect(page).not_to have_content 'You chose: Scissors'
    expect(page).not_to have_content 'You chose: Paper'
  end

  scenario 'player wins' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:scissors)
    register
    click_button 'Rock'
    expect(page).to have_content 'You win!'
    expect(page).not_to have_content 'You lose!'
    expect(page).not_to have_content 'You draw!'
  end

  scenario 'player loses' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:paper)
    register
    click_button 'Rock'
    expect(page).to have_content 'You lose!'
    expect(page).not_to have_content 'You win!'
    expect(page).not_to have_content 'You draw!'
  end

  scenario 'player draws' do
    allow_any_instance_of(Computer).to receive(:choose_weapon).and_return(:rock)
    register
    click_button 'Rock'
    expect(page).to have_content 'You draw!'
    expect(page).not_to have_content 'You lose!'
    expect(page).not_to have_content 'You win!'
  end

end
