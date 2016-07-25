require './app.rb'

feature 'Choosing weapon' do
  scenario 'weapon chosen' do
    visit ('/')
    fill_in "player_name", :with => "Zak"
    click_button "Submit name"
    click_button "rock"
    expect(page).to have_content 'Zak chose rock'
  end
end
