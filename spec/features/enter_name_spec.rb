require "capybara/rspec"

feature 'homepage' do
  scenario 'users to input their names' do
    sign_in_and_play
    expect(page).to have_content 'John vs. Fred'
  end
end
