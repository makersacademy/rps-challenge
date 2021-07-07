feature 'testing infrastructure' do
  scenario 'run app and check content' do
    visit('/')
    expect(page).to have_content 'Rock Paper Scissors'
  end
end
