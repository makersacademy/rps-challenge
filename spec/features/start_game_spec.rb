feature 'Start game' do
  scenario 'player continues to start game' do
    visit('/')
    fill_in :name, with: "Sam"
    click_button("Enter name")
    click_button("Start game")
    expect(page).to have_content "Sam, Welcome to Rock Paper Scissors Game!"
  end
end
