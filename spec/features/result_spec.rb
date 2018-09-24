# declaring the result page

feature 'results page' do
  scenario 'correct display on screen' do
    begin_and_submit
    click_button 'START!'
    click_button 'rock'
    expect(page).to have_content("Please press start to play again...")
  end
end
