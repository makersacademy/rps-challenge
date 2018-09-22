
feature 'homepage' do
  scenario 'the homepage contains the title Rock Paper Scissors' do
    visit '/'
    expect(page).to have_content 'Rock Paper Scissors'
  end
end
