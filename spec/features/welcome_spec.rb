feature 'Welcomes the user' do
  scenario "welcomes and asks for user's name to be shown later" do
    visit '/'
    fill_in :name, with: 'Chrissy'
    click_button 'Ready'
    expect(page).to have_content 'Chrissy'
  end
end
