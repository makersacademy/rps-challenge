feature "Player can make a choice" do
  scenario "and see the game result" do
    register_and_play
    click_button('Rock')
    expect(page).to have_content('Iryna WON')
  end
end

feature "Player can make a choice" do
  scenario "and on results page see it's own choice" do
    register_and_play
    click_button('Rock')
    expect(page).to have_content(/Iryna's choice is Rock/)
  end
end