# require_relative "../../app"


feature "Greet Marketeer" do
  scenario "the home page greets the Marketeer and asks for a name" do
    visit ("/")
    expect(page).to have_content "Welcome, Marketeer. What is your name?"
    click_button "Proceed"
  end
end
