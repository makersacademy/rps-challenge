feature 'Player to enter their name' do
  scenario '- enter their name' do
    visit '/'
    fill_in :name, with: 'Jane'
    expect(page).to have_content 'Player 1: Jane'
  end 
end
