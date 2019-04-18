feature 'Homepage' do
  scenario 'Show homepage of rock, paper, scissors' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors!'
  end
end
