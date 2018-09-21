feature 'I would like to be able to play rock/paper/scissors' do
  scenario 'it gives me a rock option that take me on the results page' do
  visit '/'
  fill_in 'name', with: 'Alex'
  click_button 'Go!'
  click_button 'Rock'
  expect(page).to have_content "Alex lost with rock"
  end

  scenario 'it gives me a paper option that take me on the results page' do
  visit '/'
  fill_in 'name', with: 'Alex'
  click_button 'Go!'
  click_button 'Paper'
  expect(page).to have_content "Alex lost with paper"
  end

  scenario 'it gives me a scissors option that take me on the results page' do
  visit '/'
  fill_in 'name', with: 'Alex'
  click_button 'Go!'
  click_button 'Scissors'
  expect(page).to have_content "Alex lost with scissors"
  end

end
