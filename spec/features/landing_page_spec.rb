feature "landing_page" do
  it "contains title" do
    visit '/'
    expect(page).to have_content("Rock, Paper, Scissors")
  end

  it "contains 'Start Game' button" do
    visit '/'
    expect(page).to have_selector(:button, "Start Game")
  end
end
