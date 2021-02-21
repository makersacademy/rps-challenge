feature 'welcome page' do
  scenario 'displays welcome message' do
    visit("/")
    expect(page).to have_content("Hello and welcome to Rock Paper Scissors!")
  end
  scenario 'can be returned to' do
    sign_in_and_play
    click_link "End current game"
    expect(page).to have_content("Hello and welcome to Rock Paper Scissors!")
  end
end
