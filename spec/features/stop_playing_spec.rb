feature 'stop playing' do

  scenario 'after round player can stop playing' do
    register_name
    click_button 'Rock'
    click_button 'I have enough'
    expect(page).to have_content("Hello MAMA")
  end
end
