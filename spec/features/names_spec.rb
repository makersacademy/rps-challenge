

feature 'playing against computer' do
  before do
    sign_in
  end
  
  scenario 'shows player name' do
    expect(page).to have_content 'Momo'
  end
  
  scenario 'shows player name' do
    expect(page).to have_content 'Computer'
  end
  
end
