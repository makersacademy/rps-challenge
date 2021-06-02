feature "Homepage" do
  scenario "homepage has a default message" do
    visit('/')

    expect(page).to have_content("Welcome to Rock, Paper, Scissors, please enter your name")
  end
end
