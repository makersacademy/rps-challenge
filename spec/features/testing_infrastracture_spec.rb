feature 'Testing homepage' do
  scenario 'Check homepage content' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors game homepage'
  end
end
