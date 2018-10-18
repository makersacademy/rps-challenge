feature 'Play game' do
  scenario 'player selects rock and returns a win' do
    input_name
    choose 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'You win!'
  end

  scenario 'player selects scissors and returns a lose' do
    input_name
    choose 'Scissors'
    click_button 'Submit'
    expect(page).to have_content 'You lose!'
  end
end
