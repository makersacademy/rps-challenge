feature 'RPS' do
  scenario 'can track something on the first page' do
    visit '/'
    expect(page).to have_content "Welcome to ROCK - PAPER - SCISSORS!"
  end
end
