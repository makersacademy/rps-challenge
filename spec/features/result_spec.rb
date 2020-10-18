feature "result" do
  scenario "user plays and can click a button to play again" do
    sign_in
    choose(option: 'Rock')
    click_button("Play")
    click_button("Play Again")
    expect(current_path).to eq("/play")
  end
end
