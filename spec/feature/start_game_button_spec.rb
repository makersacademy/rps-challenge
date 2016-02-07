require 'capybara/rspec'
require 'capybara/dsl'

feature 'Submit takes to correct page' do
  scenario 'submitting button start!' do
    sign_in_and_play
    click_button('Start!')
    expect(page).to have_content 'You made it this far well done! Now lets begin.....select a picture by clicking on rock, paper or scissors'
  end
end
