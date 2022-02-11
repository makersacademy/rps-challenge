feature "playing a move" do

  scenario "the player wins" do
    allow_any_instance_of(BotPlayer).to receive(:weapon).and_return(:rock)
    visit_and_sign_on
    choose('paper')
    click_button('Play')
    expect(page).to have_content "Bob, your opponent played rock, you win!"
  end

end
