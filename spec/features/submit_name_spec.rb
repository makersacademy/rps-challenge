feature 'Enter name' do
  scenario 'submitting names' do
    enter_name_submit
    expect(page).to have_content 'Yas'
  end
  scenario 'Computer vs player name' do
    enter_name_submit
    expect(page).to have_content 'Yas vs. The Computer'
  end
end


