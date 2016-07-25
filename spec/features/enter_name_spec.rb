require './app.rb'

feature 'Entering player name' do
  scenario 'player name entered' do
    visit ('/')
    fill_in "player_name", :with => "Zak"
    click_button "Submit name"
    expect(page).to have_content 'Zak vs. Computer!'
  end
end
