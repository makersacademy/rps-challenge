feature RockPaperScissors do
  scenario "it has a message on the home page" do
    visit '/'
    expect(page).to have_content "Hello Rock, Paper & Scissors"
  end
end
