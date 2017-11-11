feature 'Testing home page' do
  scenario 'run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to Maker R-P-S app!'
  end

end
