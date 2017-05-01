feature 'Testing Homepage' do
  scenario 'Homepage displays welcome message' do
    visit '/'
    expect(page).to have_content("Welcome to ROCK PAPER SCISSOR!!!")
  end
end
