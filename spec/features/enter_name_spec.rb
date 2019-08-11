feature 'Enter name' do
  scenario 'submitting name' do
    enter_name_and_submit
    expect(page).to have_content 'Hello Julian'
  end
end
