require 'spec_helper'

feature Rps do

  scenario 'should allow a player to enter thier name' do
    sign_in_and_play
    expect(page).to have_content("Welcome MAMA")
  end
  
end
