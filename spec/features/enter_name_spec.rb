feature 'enter name' do
  scenario ' The website lets you enter a name' do
    visit('/')
    fill_in :player, with: "Fulgrim"
    click_button "Submit"
    expect(page).to have_content"Welcome Fulgrim!"
    end
end
