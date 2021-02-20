feature '' do
  scenario '' do
    sign_in_and_play
    expect(page).to have_button("Play again?")
  end
end
