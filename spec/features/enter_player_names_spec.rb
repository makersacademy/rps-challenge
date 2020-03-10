feature 'inputs names to form' do
  scenario 'names appear on the play page' do
    sign_in_and_play
    expect(page).to have_content 'Lord Looney vs. Count Catula'
  end
end
