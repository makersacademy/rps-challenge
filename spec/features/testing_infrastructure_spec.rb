
feature 'Test infrastructure' do
  scenario 'runs app and checks content' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors'
  end
end
