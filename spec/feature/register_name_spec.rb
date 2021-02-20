feature 'registering name' do
  scenario 'see name after registering' do
    sign_up_and_go
    expect(page).to have_content 'Frank'
  end
end
