feature 'displays choice of RPS' do
  scenario "showing the player rock, paper or scissors" do
    visit '/'
    fill_in :player_name, with: 'Rianne'
    click_button 'Submit'
    visit '/play'
    expect(page).to have_content "Rock\nPaper\nScissors"
  end
end
