
feature 'register my name before playing an online game' do
  scenario 'welcomes me on the page' do
    visit '/'
    expect(page).to have_content("Hello there!")
  end

  scenario 'asks me for my name and shows it' do
    visit '/'
    fill_in 'name', with: 'Alex'
    click_button 'Go!'
    expect(page).to have_content "Let's play Alex"
  end
end

feature 'I would like to be able to play rock/paper/scissors' do
  scenario 'it gives me a rock option that take me on the results page' do
  visit '/'
  fill_in 'name', with: 'Alex'
  click_button 'Go!'
  click_button 'Rock'
  expect(page).to have_content "Alex lost"
  end

  scenario 'it gives me a rock option that take me on the results page' do
  visit '/'
  fill_in 'name', with: 'Alex'
  click_button 'Go!'
  click_button 'Paper'
  expect(page).to have_content "Alex lost"
  end

  scenario 'it gives me a rock option that take me on the results page' do
  visit '/'
  fill_in 'name', with: 'Alex'
  click_button 'Go!'
  click_button 'Scissors'
  expect(page).to have_content "Alex lost"
  end

end
