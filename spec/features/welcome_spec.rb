feature 'Environment & Infrastructure' do
  scenario 'Can display a basic welcome screen' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Sissors!'
  end
end
