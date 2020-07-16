
feature 'Enter name' do
  scenario 'submitting name' do
    enter_and_play
    expect(page).to have_content 'Rich vs. CPU'
  end
end
#expect to see first name vs CPU
