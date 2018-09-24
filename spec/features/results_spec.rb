feature 'Results' do
  scenario 'the results page shows the results' do
  enter_name_and_play
  choose 'rock'
  click_button 'Submit'
  expect(page).to have_content "The results are out!"
  end

  scenario 'the results page shows my move' do
  enter_name_and_play
  choose 'rock'
  click_button 'Submit'
  expect(page).to have_content "rock"
  end



end
