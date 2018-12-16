require_relative "../../app"

feature "Greet Marketeer" do
  scenario "the home page greets the Marketeer and asks for a name" do
    visit("/")
    expect(page).to have_content "Welcome, Marketeer. What is your name?"
    fill_in "name", with: "Subomi"
    click_button "Proceed"
  end
end

feature "Display Marketeer name" do
  scenario "the Marketeer's name is displayed on the screen and they can proceed to the game" do
    greet_and_name
    visit("/lights")
    # p @name
    # p params[:name]
    expect(page).to have_content "#{@name} has challenged RPS bot to a game"
    click_button "Proceed to the game room"
  end
end

feature "Display RPS choices" do
  scenario "Ask Marketeer to select RPS choice" do
    greet_and_name
    name_in_lights
    visit("/selection")
    expect(page).to have_content "#{@name}, choose wisely"
    click_button("Rock" || "Paper" || "Scissors")
  end
end
