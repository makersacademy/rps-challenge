require './app.rb'
require './spec/feature/web_helpers.rb'
# require "rack_session_access/capybara"

RSpec.feature 'RPS game' do
  SEED = 647_80

  scenario 'button rock return cpu and result' do 
    srand(SEED)
    insert_user_name
    click_button 'Rock'
    expect(page).to have_content("You win!")
  end

  scenario 'button paper returns Paper!' do
    srand(SEED)
    insert_user_name
    click_button 'Paper'
    expect(page).to have_text("You loose!")
  end

  scenario 'button scissors returns Scissors' do
    srand(SEED)
    insert_user_name
    click_button 'Scissors'
    expect(page).to have_text("Draw!")
  end

end
