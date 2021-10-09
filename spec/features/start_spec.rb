feature 'Main page content' do
  scenario 'show the title' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors!'
  end
end
