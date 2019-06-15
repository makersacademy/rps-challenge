# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

describe "Register name before playing game", type: :feature do
  it "accepts a player name in a form" do
    visit '/'
    fill_in('player_1', with: 'Dwayne Johnson')
    click_button('Submit')
    expect(page).to have_content 'Dwayne Johnson V Computer'
  end
end

# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
