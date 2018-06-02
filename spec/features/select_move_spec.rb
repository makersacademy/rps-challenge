feature "select move" do
  scenario "user can choose rock" do
    register_to_play
    click_link('Rock')
    expect(page).to have_content "Pookie has choosen: Rock"
  end
  scenario "user can choose paper" do
    register_to_play
    click_link('Paper')
    expect(page).to have_content "Pookie has choosen: Paper"
  end
  scenario "user can choose scissors" do
    register_to_play
    click_link('Scissors')
    expect(page).to have_content "Pookie has choosen: Scissors"
  end
end
