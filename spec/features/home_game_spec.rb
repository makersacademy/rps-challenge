require_relative '../../app'

feature 'home game', type: :feature do
  scenario 'shows your points' do
    log_in_and_start
    expect(page).to have_content('Steve: 0 points')
  end
end
