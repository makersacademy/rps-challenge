feature 'Infrastructure test' do
  scenario 'Loads page with Hello!' do
    visit('/')
    expect(page).to have_content('Hello!')
  end
end

feature 'Input field for name' do
  scenario 'Be able to register name' do
    visit('/') 
    fill_in('name', with: 'Dave')
    click_button("Let's play!")
    expect(page).to have_content('Dave')
  end
end