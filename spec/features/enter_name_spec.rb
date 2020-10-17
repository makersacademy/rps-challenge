feature 'entering name' do
  scenario 'first user enters name' do
    solo_enter_name_and_play
    expect(page).to have_content('Hermione')
  end
end
