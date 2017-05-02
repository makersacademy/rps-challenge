
feature 'User can register her name' do

  scenario 'user fills in her name' do
    register
    expect(page).to have_content("Player's name is Ana")
  end

end
