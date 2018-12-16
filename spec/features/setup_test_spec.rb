feature 'infastructure works' do
  scenario  'user can visit app' do 
    visit('/')
    expect(page).to have_content 'Welcome to ROCK, PAPER, SCISSORS'
  end
end
