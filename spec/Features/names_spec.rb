# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature 'Players can enter names' do
  scenario 'in custom colour' do
    visit('/')
    fill_in :player_name, with: 'Bevin'
    fill_in :name_colour, with: "red"
    click_button 'Submit'
    expect(page).to have_content 'Ok, Bevin Choose your weapon'
  end
end
