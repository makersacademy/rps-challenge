# what are the exact actions a user would take?
# visit the play page ("/play")
# fill in a text field with a choice (Rock, Paper or Scissors)
# click a Submit button ("Play")
#
# They then would expect to SEE:
# A page with the words "(player_1_name)" chose "(Rock)"

# WHAT DOES THE USER HAVE TO DO?
# WHAT DOES THE USER EXPECT TO SEE?


feature "Expects the player to make an attack choice" do

  scenario "Rock button accepts data and returns choice confirmation" do
    sign_in_and_play
    click_link "Rock" # "Play"?
    expect(page).to have_content "Rob chose Rock"
  end

  # scenario "Paper button accepts data and returns choice confirmation" do
  #   sign_in_and_play
  #   click_link "Paper" # "Play"?
  #   expect(page).to have_content "Rob chose Paper"
  # end
  #
  # scenario "Scissors button accepts data and returns choice confirmation" do
  #   sign_in_and_play
  #   click_link "Scissors" # "Play"?
  #   expect(page).to have_content "Rob chose Scissors"
  # end

end


# scenario "Rock button accepts data and returns choice confirmtaion" do
#   sign_in_and_play
#   visit("/play") #is this correct?!
#   fill_in :choice_1, with: "Rock"
#   click_button "Submit" # "Play"?
#   expect(page).to have_content "Rob chose Rock"
# end
