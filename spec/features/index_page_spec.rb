feature 'index page' do
  scenario 'game title on front page' do
    visit '/'
    expect(page).to have_content "Rock Paper Scissors"
  end
end
