feature 'Shows submit form for name' do
  scenario 'user visits homepage' do
    visit("/")
    fill_in :player_1_name, with: 'Xain'
  end
end

feature 'Displays name in lights' do
  scenario 'user logs in and sees name' do
    log_in
    expect(page).to have_content "Xain"
  end
end
