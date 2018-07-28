feature 'Play RPS:' do
  scenario 'player can win' do
    sign_in_and_play
    choose(option: "rock")
    click_button "OK"
    expect(page).to have_content 'You rule supreme!'
  end
end
