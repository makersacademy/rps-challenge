feature "Home page" do
  scenario "The home page displays the name of the game" do
    visit('/')
    expect(page).to have_content("Lets play Rock Paper Scissors!")
  end
end

feature "entering player name" do
  scenario "player enters their name and is taken to the game screen" do
    visit('/')
    fill_in('name', with: 'John')
    click_button('play')
    expect(page).to have_content("Choose your weapon, John")
  end
end

# feature "playing the game" do
#   scenario "player selects "
# end
