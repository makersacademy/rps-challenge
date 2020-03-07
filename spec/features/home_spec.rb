require_relative '../../app'

feature 'homepage', type: :feature do
  scenario 'log in and start' do
    log_in_and_start
    expect(page).to have_content "Steve's score: 0"
  end
end
