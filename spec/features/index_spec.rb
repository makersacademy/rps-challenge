feature "Home Page" do

  scenario "loads up with title" do
    visit('/')
    expect(page).to have_text "Rock, Paper, Scissors... Who will win?!"
  end

  scenario "loads up with text input" do
    visit('/')
    expect(page).to have_field("name_input")
  end

  scenario "loads up with submit button" do
    visit('/')
    expect(page).to have_button("name_submit")
  end

end
