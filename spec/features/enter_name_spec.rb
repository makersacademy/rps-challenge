# I would like to register my name before playing an online game
# the marketeer should be able to enter their name before the game

feature "Enter name" do
    scenario "Marketeer enters their name before the game" do
    visit('/')
    fill_in :name, with: "Frankie"
    click_button "Play"
    expect(page).to have_content "Hello Frankie! Rock, paper or scissors?"
    end
end
