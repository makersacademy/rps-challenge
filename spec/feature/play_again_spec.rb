require 'capybara/rspec'
require 'capybara/dsl'

feature 'clicking play again leads back to select_rps_page' do
  scenario 'clicked link back to page' do
    play_again
    expect(page).to have_content'You made it this far well done! Now lets begin.....select a picture by clicking on rock, paper or scissors'
  end
end
