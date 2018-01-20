feature '#Result Page' do
  scenario 'Should display results' do
    sign_in_play_select_rock
    expect(page).to have_text 'Felix won this round'
  end
end
