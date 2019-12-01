require_relative '../../app'

feature 'home game', type: :feature do
  scenario 'shows your points' do
    log_in_and_start
    expect(page).to have_content "Steve's score: 0"
  end
end
