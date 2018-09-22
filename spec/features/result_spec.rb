# declaring the result page

feature 'results page' do
  scenario 'declaring a drawn result' do
    begin_and_submit
    click_button 'START!'
    fill_in :choice, with: 'r'
    click_button 'Submit'
    expect(page).to have_content("Please press start to play again...")
  end
end
