feature 'Rules page' do
  scenario 'has the rules' do
    visit '/'
    click_button "Rules"
    expect(page).to have_content "The Rules"
  end
end
