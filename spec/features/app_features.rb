feature 'Homepage greeting' do
  scenario 'can run app and display game name' do
    visit('/')
    expect(page).to have_content "Rock, Paper, Scissors"
  end
end
