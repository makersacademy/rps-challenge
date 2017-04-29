require 'capybara'

feature 'Starting up the app' do
  scenario 'has content on the page' do
    visit '/'
    expect(page).to have_content 'Rock, Paper, Scissors!'
  end

  scenario 'takes information through successfully' do
    visit '/'
    fill_in 'player', with: 'Trump'
    find("input[value='Rock']").click
    click_button 'Play'
    expect(page).to have_content 'You chose Rock'
  end
end
