feature 'I would like to be able to play rock/paper/scissors' do
  scenario 'it gives me a rock option that take me on the results page' do
  enter_name_and_play
  choose 'rock'
  click_button 'Submit'
  expect(page).to have_content "Alex lost with rock"
  end
end
