feature 'Enter data' do

  scenario 'submitting info' do
    visit('/')
    fill_in :name1, with: 'Dove'
    fill_in :name2, with: 'Alex'
    click_button "Let's Go!"
    expect(page).to have_content "Dove vs. Alex"
  end
end