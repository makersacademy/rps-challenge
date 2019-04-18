feature 'sign-in process' do
  scenario 'form is filled in by player' do
    visit '/'
    fill_in :name, with: "Hannah"
    click_button "Submit"
    expect(page).to have_content "Welcome to RPS, Hannah!"
  end
end
