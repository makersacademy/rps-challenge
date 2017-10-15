feature 'Rules page' do
  scenario 'has the rules' do
    visit '/'
    click_button "Rules"
    expect(page).to have_content "The Rules"
  end
  scenario 'has a link back to the version page' do
    visit '/'
    click_button "Rules"
    click_button "Start"
    expect(page).to have_current_path '/'
  end
end
