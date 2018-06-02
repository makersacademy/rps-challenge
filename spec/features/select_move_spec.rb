feature "select move" do
  scenario "user can choose rock, paper or scissors" do
    register_to_play
    click_link('Rock')
    expect(page).to have_content "Pookie has choosen: Rock"
  end
end
