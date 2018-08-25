feature 'Enter name' do
  scenario 'can enter name' do
    sign_in_and_play
    expect(page).to have_content 'Hi Josh!'
  end
end

feature 'Select Rock/Paper/Scissors' do
  scenario "Player can select 'paper'" do
    sign_in_and_play
    click_link 'Paper' 
  end
end


# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

