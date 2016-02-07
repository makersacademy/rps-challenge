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
    expect(page).to have_content(/Player1: Iryna's choice is Rock/)
  end
end

feature "Player can make a choice" do
  # let(:computer){ double :computer, name: 'Dave', player_choice: :rock}
  scenario "and on results page see opponent's choice" do
    register_and_play
    click_button('Rock')
    expect(page).to have_content(/Player2: (.*)'s choice is (.*)/)
  end
end