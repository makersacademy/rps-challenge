# declaring the result page

feature 'results page' do
  scenario 'declaring a drawn result' do
    begin_and_submit
    click_button 'START!'
    click_button 'rock'
    expect(page).to have_content("Please press start to play again...")
  end
end
