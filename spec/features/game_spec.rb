feature "Game page" do
  scenario "has 3 options: rock, paper, scissors" do
    enter_name_and_play
    choose('paper')
    click_button 'Submit'
    expect(page).to have_content "The results are out!"
  end
end
