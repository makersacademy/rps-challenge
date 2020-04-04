feature 'player makes move' do
  scenario 'player makes choice and sees their choice in message' do
    sign_in_and_play
    choose 'Paper'
    click_button 'Submit'
    expect(page).to have_content "Nigel, you chose Paper"
  end
end
