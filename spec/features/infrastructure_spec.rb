feature 'infrastructure' do
  scenario 'test infrastructure working' do
    visit('/')
    expect(page).to have_content('ROCK, PAPER, SCISSORS?!')
  end
end
