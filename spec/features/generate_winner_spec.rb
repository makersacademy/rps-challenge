require 'capybara/rspec'

feature 'generate winner' do
  scenario 'selects lizard' do
    sign_in_and_play
    click_button 'Orange-throat'
    expect(page).to have_content 'chose the'
  end
end

