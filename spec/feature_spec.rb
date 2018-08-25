feature 'Enter name' do
  scenario 'can enter name' do
    visit('/')
    fill_in :player_name, with: 'Josh'
    expect(page).to have_content ''
  end
end

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

