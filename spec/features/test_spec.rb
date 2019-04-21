feature 'Test homepage' do
  scenario 'The homepage displaying content' do
    visit '/'
    expect(page).to have_content 'Rock! Paper! Scissors!'
  end
end
