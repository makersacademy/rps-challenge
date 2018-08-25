feature 'Enter name' do
  scenario 'can enter name' do
    visit('/')
    fill_in :player_name, with: 'Josh'
    click_on 'Submit'
    expect(page).to have_content 'Hi Josh!'
  end
end

feature 'Select Rock/Paper/Scissors' do
  scenario "Player can select 'paper'" do
    visit('/')
    fill_in :player_name, with: 'Josh'
    click_on 'Submit'
    click_link 'Paper' 
  end
end


# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

