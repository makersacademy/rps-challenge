require_relative '../../app'

feature "When the result has been revealed" do
  scenario "the player can choose to play again" do
    straight_to_result
    expect(page).to have_button 'Play again'
  end
end

feature "When clicking to play again" do
  scenario "the player is sent back to the '/play' page" do
    straight_to_result
    click_button 'Play again'
    expect(page).to have_content "Hello Joe! Let's play rock paper scissors!"
  end
end
