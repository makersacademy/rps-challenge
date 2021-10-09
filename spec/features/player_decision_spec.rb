feature "let player choose" do
  scenario "player choose rock" do
    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_content "Serena chooses ROCK!"
    expect(page).not_to have_content "Serena chooses!"
  end

  scenario "bot choose paper" do
    bot = Bot.new
    allow(bot).to receive(:rand).and_return(1)
    allow(Bot).to receive(:new).and_return(bot)

    sign_in_and_play
    click_button "ROCK"
    expect(page).to have_content "Computer chooses PAPER!"
    expect(page).not_to have_content "Computer chooses!"
  end
end
