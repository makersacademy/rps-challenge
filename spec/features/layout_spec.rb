feature "Feature: Layout" do
  scenario "Shows the site title in the header" do
    visit "/"
    heading_text = page.find(".navbar-brand").assert_text("Rock, Paper, Scissors, Spock, Lizard!")
    expect(heading_text).to be true
  end
end
