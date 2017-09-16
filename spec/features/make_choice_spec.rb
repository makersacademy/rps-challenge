# what are the exact actions a user would take?
# visit the play page ("/play")
# fill in a text field with a choice (Rock, Paper or Scissors)
# click a Submit button ("Play")
#
# They then would expect to SEE:
# A page with the words "(player_1_name)" chose "(Rock)"

# WHAT DOES THE USER HAVE TO DO?
# WHAT DOES THE USER EXPECT TO SEE?

feature "Make choice" do
  scenario "submitting choice" do
    visit("/play") #is this correct?!
    fill_in :choice, with: "Rock"
    click_button "Submit" # "Play"?
    expect(page).to have_content "Rob chose Rock"
  end
end
