feature 'Testing infrastructure' do
  scenario 'Run app and check page content' do
    visit ('/')
    expect(page).to have_content 'Rock, Paper, Scissors!'
  end
end