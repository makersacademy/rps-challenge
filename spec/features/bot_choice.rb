feature "Choosing" do

  scenario "Player can AI's choice" do

  before do
    bot = double(:game)
    expect(bot).to receive(:choice).and_return("paper")
  end

    visit('/')
    fill_in :player, with: "Fulgrim"
    click_button "Submit"
    fill_in :player_choice, with: "scissors"
    click_button "Submit"
    expect(page).to have_content("Bot has chosen #{bot.weapon}")
  end
end
