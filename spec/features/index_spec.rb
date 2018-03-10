feature 'Register Name Page' do
  scenario 'has title at top of page' do
    visit('/')
    expect(page).to have_content "ROCK PAPER SCISSORS"
  end
end
