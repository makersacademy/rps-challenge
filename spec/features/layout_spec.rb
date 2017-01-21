feature "Feature: Layout" do
  scenario "Shows the site title in the header" do
    visit "/"
    expect(page).to have_content("Rock, Paper, Scissors, Spock, Lizard!")
  end
end
