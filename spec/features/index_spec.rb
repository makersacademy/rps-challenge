feature "Home Page" do

  scenario "loads up with title" do
    visit('/')
    expect(page).to have_text "Rock, Paper, Scissors... Who will win?!"
  end

  scenario "loads up with text input" do
    visit('/')
    expect(page).to have_content("name-input")
  end

end
