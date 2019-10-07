feature 'It works' do
  scenario 'Configuration successful' do
    visit('/')
    expect(page).to have_content 'Rock Paper Scissors!'
  end
end
