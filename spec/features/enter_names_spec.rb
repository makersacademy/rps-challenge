feature 'testing name can be entered' do
  scenario 'enter name, submit' do
    sign_in_and_play
    expect(page).to have_content 'Charlene vs Computer'
  end
end
