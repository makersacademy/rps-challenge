feature 'player 2 selecting rock, paper or scissors' do
  scenario 'users choice is shown' do
    sign_in_and_play
    click_button('Rock')
    click_button('Rock')
    expect(page).to have_content("Jeremy chose: Rock")
  end
end