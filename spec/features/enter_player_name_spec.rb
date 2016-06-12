#As a marketeer
#So that I can see my name in lights
#I would like to register my name before playing an online game

feature "Enter and display player's name" do
  scenario 'Player enters name on home page, goes to game page, name shown' do
    enter_rnd_name_go_to_single_player_game
    expect(page).to have_content(@random_name)
  end
end
