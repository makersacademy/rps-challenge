feature 'Enter Name' do
  scenario 'Enter Anna and submit, see Anna' do
    visit '/'
    fill_in('name', with: 'Anna')
    click_button('Start')
    expect(page).to have_content 'Anna'
  end

end
