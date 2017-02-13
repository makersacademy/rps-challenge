feature "play a game of RPS" do
  scenario "player wins if choosing rock and comp sci" do
    srand(4)
    visit '/'
    fill_in :player_name, with: 'name1'
    click_button 'Submit'
    choose('rock')
    click_button 'Make Descision!'
    expect(page).to have_content 'Win'
  end
end
