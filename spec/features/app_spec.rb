feature 'Game' do 
  scenario 'enter player name in form and see name displayed' do 
    visit '/'
    fill_in 'name', with: 'Lauren'
    click_button 'Go!'
    expect(page).to have_content('Lauren') 
  end
end 