feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player, with: "Vlad"
    click_button "Submit"
    expect(page).to have_content "Hi Vlad!"
  end
end
