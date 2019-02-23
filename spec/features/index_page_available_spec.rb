feature 'Testing the homepage' do
  scenario 'The homepage is up and serving content' do
    visit '/'
    expect(page).to have_content 'Rock! Paper! Scissors!'
  end
end
