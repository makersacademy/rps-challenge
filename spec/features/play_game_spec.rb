feature 'Play game' do
  scenario 'player selects an option and returns a win' do
    input_name
    choose 'Rock'
    click_button 'Submit'
    expect(page).to have_content 'You win!'
  end
end
