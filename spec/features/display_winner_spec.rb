feature 'Displays winner page' do
  scenario 'Display page when player wins' do
    visit('/')
    fill_in :name, with: "Charlotte"
    click_button("Let's play!")
    click_button('Rock')
    expect(page).to have_content 'Charlotte wins!'
  end
 end
