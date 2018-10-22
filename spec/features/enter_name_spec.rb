feature 'Enter name' do
  scenario "1 Player" do
    sign_in
    expect(page).to have_content 'Dave'
  end

  scenario "2 Players" do
    sign_in_2_player
    expect(page).to have_content 'Dave'
    expect(page).to have_content 'Dave'
  end
end
