feature 'form test' do
  scenario 'see player name on screen' do
    enter_name_and_go
    expect(page).to have_content('Homer')
  end
end
