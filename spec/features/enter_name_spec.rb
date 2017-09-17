# what are the exact actions a user would take?
# visit the home page ("/")
# fill in a text field with a name (to be opposed by COMPUTER)
# click a Submit button ("Play")
#
# They then would expect to SEE:
# A page with the words "(name one)" vs. "(Computer)"

# WHAT DOES THE USER HAVE TO DO?
# WHAT DOES THE USER EXPECT TO SEE?

feature "Enter name" do
  scenario "submitting name" do
    p $test_computer
    p $test_computer.choice
    # visit ("/")
    # fill_in :player_1_name, with: "Rob"
    # # fill_in :player_2_name, with: "Computer"
    # click_button "Submit"
    sign_in_and_play
    expect(page).to have_content "Rob vs. Computer"
  end
end
