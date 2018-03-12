feature 'game result' do

  scenario "The player is able to see if they have won" do
    srand(5)
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content 'Alex is the winner'
  end

  scenario "The player is able to see if they have lost" do
    srand(5)
    sign_in_and_play
    click_button("Paper")
    expect(page).to have_content 'Computer is the winner'
  end

  scenario "The player is able to see if is draw" do
    srand(5)
    sign_in_and_play
    click_button("Scissors")
    expect(page).to have_content 'No one is the winner'
  end

end
