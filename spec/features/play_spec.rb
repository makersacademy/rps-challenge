feature 'game' do
  scenario "game greets player" do
    visit('/')
    fill_in(:player_name, with: "Irina")
    click_button("Start the game!")
    expect(page).to have_content("Hello, Irina")
  end
end
