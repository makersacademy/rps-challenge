feature 'Enter names' do
  scenario 'submitting names' do
    enter_names_and_submit
    expect(page).to have_content 'John Doe vs. Jane Doe'
  end
end
