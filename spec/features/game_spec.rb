# I would like to be able to play rock/paper/scissors

feature "in the game" do

  before do
    visit("/")
    fill_in("name", with: "Bob")
    click_button("New Game")
  end

  scenario "see choices to pick from either rock, paper or scissors" do
    expect(page).to have_button("Rock")
    expect(page).to have_button("Paper")
    expect(page).to have_button("Scissors")
  end

  scenario "choose one from either rock, paper or scissors" do
    click_button("Rock")
    expect(page).to have_content("You selected Rock!")
  end

  scenario "computer chooses an option" do
    click_button("Rock")
    expect(page).to have_content("Computer selected Rock!")
  end
  
end