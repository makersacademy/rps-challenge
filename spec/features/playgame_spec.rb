require_relative "../../app.rb"

feature "Name displayed on the play game page" do
  scenario "It shows previously loaded name on the play game page" do
    sign_in_and_play
    expect(page).to have_text "Mittens"
  end
  scenario "It loads a default computer name" do
    sign_in_and_play
    expect(page).to have_text "Computer"
  end
  scenario "It loads a move selection" do
    sign_in_and_play
    expect(page).to have_selector("input", :class =>"rock")
    expect(page).to have_selector("input", :class =>"paper")
    expect(page).to have_selector("input", :class =>"scissors")
  end
  scenario "It loads a random move selection" do
    sign_in_and_play
    click_button "I'm Feeling Lucky"
  end
  # scenario 'It shows a players score' do
  #   sign_in_and_play
  #   expect(page).to have_text "Mittens's Score:"
  # end
  # scenario 'It shows the computers score' do
  #   sign_in_and_play
  #   expect(page).to have_text "Computer's Score:"
  # end
end
