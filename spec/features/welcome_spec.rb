# Welcome page

feature "#Welcome page" do
  scenario "- Shows correct text" do
    visit('/home')
    expect(page).to have_content('Welcome to RPS game!')
  end

  scenario "- Has 'Enter' button" do
    visit('/home')
    #expect(page).to have_button('Enter')
  end
end
