require 'capybara/rspec'

feature 'Index welcomes user!' do
  scenario 'user visits index and is welcomed' do
    visit('/')
    expect(page).to have_content('Hello world!')
  end
end