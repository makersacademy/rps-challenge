feature 'Home Page' do
  scenario 'greeting the user' do
    visit('/')
    expect(page).to have_content 'Rock Paper Scissors Game'
  end
  
  scenario 'user enters name' do
    visit('/')
    fill_in :name, with: "Deanna"
    click_button 'Go!'
    expect(page).to have_content 'Deanna'
  end
end
