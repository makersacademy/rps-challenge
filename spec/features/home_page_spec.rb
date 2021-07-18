feature 'Welcome player' do
  scenario 'Welcomes player on the home page' do
    visit ('/')
    expect(page).to have_content 'Hello, welcome to Rock, Paper, Scissors!'
  end
end