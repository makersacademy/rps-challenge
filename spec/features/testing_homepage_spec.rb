feature 'Testing homepage' do
  scenario 'Can run app and see message' do
    visit('/test')
    expect(page).to have_content 'Welcome to Rock, Paper, Scissors!'
  end
end
