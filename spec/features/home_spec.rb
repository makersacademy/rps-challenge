describe 'Home' do
  scenario 'Player names can be entered at home page' do
    visit '/'
    expect(page).to have_content "Enter names to begin"
  end
end
