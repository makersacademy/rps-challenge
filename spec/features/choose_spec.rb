

feature 'choose.erb' do
  before do
    sign_in
  end
  
  scenario 'shows player name' do
    expect(page).to have_content 'Corina'
  end
  
end
