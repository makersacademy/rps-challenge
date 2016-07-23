feature 'Enter Names' do
  scenario "sets the name of the player" do
    sign_in_and_play
    expect(page).to have_content ('Hello Luke!')
  end
end
