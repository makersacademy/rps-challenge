feature 'Enter names' do
  scenario 'submitting names' do
    sign_in_and_press_submit
    expect(page).to have_content 'Hello Adam'
  end
end
