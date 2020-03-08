feature "Play again" do
  scenario "player draws and chooses 'Play Again'" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    choose('rock')
    click_button('Play')
    click_link('Play Again')
    expect(page).to have_content "Choose your weapon!"
  end

  scenario "player wins and chooses 'Play Again'" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    choose('paper')
    click_button('Play')
    click_link('Play Again')
    expect(page).to have_content "Choose your weapon!"
  end

  scenario "player loses and chooses 'Play Again'" do
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    sign_in_and_play
    choose('scissors')
    click_button('Play')
    click_link('Play Again')
    expect(page).to have_content "Choose your weapon!"
  end
end
