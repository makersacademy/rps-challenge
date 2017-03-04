require './app'

# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "Start the game" do

  scenario "register player's name" do
    visit '/'
    fill_in('PLAYER', with: "Wanda Maximoff")
    click_button "Enter"
    expect(page).to have_content("Wanda Maximoff")
  end

end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature "Play Rock, Paper, Scissors" do

  xscenario "clicking any button returns a win or a lose" do

  end


end
