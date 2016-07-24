require 'spec_helper'

feature 'Enter names' do
  scenario 'A player enters their name' do
    enter_player_name
    expect(page).to(have_content("Welcome Sophie!"))
  end

end
