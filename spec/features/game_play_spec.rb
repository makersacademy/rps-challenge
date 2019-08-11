feature "#Play page" do
  scenario "- layer's name is correctly displayed" do
    goto_play
    expect(page).to have_content('Chuan Cheng, what is your move?')
  end

  scenario "- player's choice is correctly displayed" do
    goto_play
    choose(option: '1')
    click_button('Submit')
    expect(page).to have_content('You: Rock')
  end

end
