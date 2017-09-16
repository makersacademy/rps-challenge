feature 'main index page' do

  scenario 'when arriving at index, expect headline' do
    visit('/')
    expect(page).to have_content('Welcome to the most dangerous game')
  end


end
