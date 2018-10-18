feature 'Play game' do
  scenario 'player selects an option and returns a win' do
    input_name
    click_button 'Rock'
    expect(page).to have_content 'You win!'
  end
end
