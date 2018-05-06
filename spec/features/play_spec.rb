feature 'play the game', :feature do

  scenario 'Player beats computer', js: true do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
    click_button("Scissors")
    expect(page).to have_content("George wins!")
  end

  scenario 'Computer beats player', js: true do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    click_button("Scissors")
    expect(page).to have_content("The Computer wins!")
  end

  scenario 'draw', js: true do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
    click_button("Rock")
    expect(page).to have_content("It's a draw")
  end
end
