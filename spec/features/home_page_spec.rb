feature 'Welcome player' do
  scenario 'player opens the home page up' do
    visit ('/')
    expect(page).to have_content 'Hello, welcome to Rock, Paper, Scissors!'
  end
end