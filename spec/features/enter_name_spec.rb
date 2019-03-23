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

  context "when name submitted" do
    it "displays user's name" do
      sign_in
      expect(page).to have_content "Let's play, Matt Tea!"
    end
  end
end