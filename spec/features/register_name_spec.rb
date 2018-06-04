feature "Register names" do
  scenario "add names to game" do
    visit('/')
    fill_in('p1_name', :with => 'Chris')
    click_button 'Submit'
    visit('/game')
    expect(page).to have_content 'Chris'
  end
end
