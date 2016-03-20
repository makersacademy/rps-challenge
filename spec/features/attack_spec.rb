feature '#attack' do
  scenario '>should play turn as rock if rock button is clicked' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content("You played Rock.")
  end
end
