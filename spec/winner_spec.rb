feature 'Winner' do
  scenario "confirm player's move" do
    visit ('/')
    fill_in :name, :with => "Tara"
    click_button "Submit"
    click_button "Rock"
    expect(page).to have_content "You have selected Rock."
  end
  scenario "displays the computer's move" do
    visit ('/')
    fill_in :name, :with => "Tara"
    click_button "Submit"
    click_button "Rock"
    expect(page).to have_content "Computer move: #{ @computer_move }"
  end

  # scenario "displays winner when computer wins" do
  #
  #   allow(computer).to receive(:move).and_return(@computer_move)
  #   expect(page).to have_content "And the winner is: Player!"
  # end
  # scenario 'shows there is a draw' do
  #
  # end


end
