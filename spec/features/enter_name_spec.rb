# As a marketeer,
# So that I can see my name in lights,
# I would like to register my name before playing an online game.

describe "Homepage" do
  it "renders a form" do
    visit("/")
    expect(page).to have_selector "form"
  end

  it "allows user to enter name" do
    visit("/")
    expect(page).to have_selector "form input[name='name']"
  end

  it "displays user's name" do
    visit("/")
    fill_in "name", with: "Matt Tea"
    click_button "Submit"
    expect(page).to have_content "Let's play, Matt Tea!"
  end
end