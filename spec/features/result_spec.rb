#3. I would like to find out the result

feature 'Result' do
  scenario 'Win' do
    computer_dbl = double :computer
    allow(computer_dbl).to receive(:weapon).and_return("Scissors")
    sign_in_and_play
    click_button 'Start game'
    click_button 'Rock'
    expect(page).to have_content "Goose: Won!"
  end

  scenario 'Lose' do
    computer_dbl = double :computer
    allow(computer_dbl).to receive(:weapon).and_return("Paper")
    sign_in_and_play
    click_button 'Start game'
    click_button 'Rock'
    expect(page).to have_content "Goose: Lost!"
  end
end
