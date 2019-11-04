feature 'enter names' do
  scenario 'user can enter names' do
    fill_in_and_submit
    expect(page).to have_content 'Ben vs. Amy'
  end
end
