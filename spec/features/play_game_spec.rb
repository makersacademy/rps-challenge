feature 'Play game' do
  scenario 'player wins' do
    sign_in_and_play
    choose(option: "rock")
    click_button "Confirm choice"
    expect(page).to have_content 'You win!'
  end
end
