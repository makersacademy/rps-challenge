feature 'Testing landing page' do
  scenario 'can load page content' do
    visit('/')
    expect(page).to have_content 'Please enter your name'
  end

  scenario 'can input names on home page' do
    visit('/')
    fill_in 'name_box', with: 'Player 1'
  end
end
