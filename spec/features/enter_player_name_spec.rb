#As a marketeer
#So that I can see my name in lights
#I would like to register my name before playing an online game

feature "Enter and display player's name" do
  scenario 'Player enters name on home page, goes to game page, name shown' do
    random_name = %w(Andrea Mario Lucia Liz).sample
    visit('/')
    fill_in('player_1_name', with: random_name)
    click_button('Play')
    expect(page).to have_content(random_name)
  end
end
