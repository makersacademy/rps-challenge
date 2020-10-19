feature 'start again' do

  scenario 'after one round player can continue' do
    register_name
    click_button 'Rock'
    click_button 'Play again'
    expect(page).to have_content("Hello Alex")
  end
end
