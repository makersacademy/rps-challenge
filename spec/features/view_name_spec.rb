require './spec/features/web_helper'
feature 'View player name' do
  scenario 'Player enters name and it get displayed on screen' do
    enter_name
    expect(page).to have_content 'Gary'
  end
end
