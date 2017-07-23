
feature 'To register' do
  scenario 'Can click button on homepage to register info' do
    visit('/')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!'
  end
end
