feature 'display index page' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Rock, Paper, Scissors!'
  end
end
