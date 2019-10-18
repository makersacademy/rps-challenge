feature 'Index Test' do
  scenario 'Tests that the index page opens successfully' do
    visit('/')
    expect(page).to have_content 'Welcome to ROCK, PAPER, SCISSORS!'
  end
end
