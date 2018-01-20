
feature 'A player can start a game' do
  scenario 'A player can enter their name to start a game' do
    visit('/')
    fill_in :name, with: 'Lewis'
    click_button "Submit"
    expect(page).to have_content("Lewis vs. SuperAI!")
  end
end
