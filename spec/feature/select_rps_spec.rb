require 'capybara/rspec'
require 'capybara/dsl'

feature 'Selecting rock link' do
  scenario 'clicking rock link' do
    sign_in_and_play
    click_button('Start!')
    click_link("Rock")
  end
end

feature 'Selecting rock goes to correct page' do
  scenario 'page opens' do
    sign_in_and_play
    click_button('Start!')
    click_link("Rock")
    expect(page).to have_content'You choose Rock'
  end
end
