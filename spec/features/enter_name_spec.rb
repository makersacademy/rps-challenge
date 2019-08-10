feature 'user enters name' do
  scenario 'user visits site' do
    visit '/'
    expect(page).to have_content "To start the game, please enter your name:"
  end
  scenario 'user inputs name' do
    visit '/'
    fill_in :player_name, with: "Dave"
    click_button "Submit"
    expect(page).to have_content "Time to play Dave!"
  end
end
