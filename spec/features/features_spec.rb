# require 'capybara/rspec'
# require 'web_helpers.rb'

feature 'See name in lights' do
  scenario 'Player can enter their name' do
    enter_name
    expect(page).to have_text 'Mickey'
  end

  feature ''
end
