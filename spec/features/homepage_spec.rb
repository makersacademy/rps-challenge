feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit '/'
    expect(page).to have_content 'Please enter'
  end

  scenario 'player submits his name' do
    submit_and_play
    expect(page).to have_content 'Dave'
  end
end
