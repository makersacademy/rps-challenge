feature 'testing infrastrcture' do
  scenario 'App runs and has content' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors!!!'
  end
end
