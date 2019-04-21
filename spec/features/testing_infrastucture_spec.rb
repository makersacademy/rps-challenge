feature 'Testing infrasture' do
  scenario 'Can run RPS game and check page content' do
    visit('/')
    expect(page).to have_content 'Testing infrastructure'
  end
end
