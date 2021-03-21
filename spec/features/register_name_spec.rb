require 'spec_helper'

feature 'enter names' do
  scenario 'a player can enter their name' do
    enters_name
    expect(page).to have_content "Boo Radley"
  end 
end  
