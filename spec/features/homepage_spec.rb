
feature RockPaperScissors do
  scenario 'displays a welcome message' do
    visit ('/')
    expect(page).to have_content("Welcome to Rock Paper Scissors!")
  end
end
