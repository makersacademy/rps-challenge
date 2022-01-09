feature 'entering name' do
  scenario 'display player\'s name' do
    sign_in
    expect(page).to have_content 'Make your choice, Max.'
  end
end