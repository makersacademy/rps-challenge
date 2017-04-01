feature 'testing infrastructure' do

  scenario 'user is asked to enter name' do
    visit('/')
    expect(page).to have_content('Please enter name')
  end

  scenario 'user fills in name' do
    visit('/')
    fill_in('player_name', :with => 'Magnus')
    click_button('OK')
    expect(page).to have_content("Welcome to RPS, Magnus")
  end

end
