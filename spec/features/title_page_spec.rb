feature 'Title screen' do
  scenario 'the title page loads' do
    visit '/'
    expect(page).to have_content "Rock Paper Scissors"
  end
end