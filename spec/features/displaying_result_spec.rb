feature 'selecting a random option for the game' do
  scenario 'displays the result of this' do
    sign_in_and_play
    click_button('Rock')
    click_button('Rock')
    expect(page).to have_content("Result: Draw")
  end
end