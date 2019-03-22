
# So that I can see my name in lights
# I would like to register my name before playing an online game

# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Dave'
    click_button 'Submit'
    expect(page).to have_content 'Dave'
  end
end
