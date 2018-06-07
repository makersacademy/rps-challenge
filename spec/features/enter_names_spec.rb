feature 'testing name can be entered' do
  scenario 'enter name, submit' do
    sign_in_and_play_computer
    expect(page).to have_content 'Charlene vs Computer'
  end
  scenario 'two players can enter a name' do
    sign_in_and_play_multiplayer
    expect(page).to have_content 'Charlene vs Bob'
  end
end
