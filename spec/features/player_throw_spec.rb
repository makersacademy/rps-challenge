feature 'player 1 throw confirmation' do
  scenario 'confirmation of throw choice displayed' do
    sign_in_and_play
    click_button "Rock!"
    expect(page).to have_content "Nayr chose to throw Rock!"
  end
end
