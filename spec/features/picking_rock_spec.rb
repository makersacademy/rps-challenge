feature "choosing to play rock" do
  scenario "player ends up selecting rock and seeing what happens" do
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_text "The battle was frantic, with great losses on both sides"
  end
end
