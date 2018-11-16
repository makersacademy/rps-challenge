require 'spec_helper'

feature "Index page" do
  scenario 'Can run app and check page content' do
    visit ('/')
    expect(page).to have_content "Rock, Paper, Scissors game"
  end
end

feature "Play page" do
  scenario 'Player can enter their name' do
    visit ('/')
    fill_in 'name', with: 'Tom'
    click_button 'Submit'
    expect(page).to have_content "Choose an option, Tom"
  end
end

# feature "Choosing an option" do
#   scenario 'Player can choose an option' do
#     visit ('/')
#     fill_in 'name', with: 'Tom'
#     click_button 'Submit'
#     click_button 'Rock'
#     expect(page).to have_content "You chose Rock"
#   end
# end
