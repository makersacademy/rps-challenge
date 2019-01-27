feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')

    expect(page).to have_content 'Play Rock Paper Scissors'
  end
end
