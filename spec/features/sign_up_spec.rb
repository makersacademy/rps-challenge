
feature '#sign_up' do
  scenario 'can sign in one player' do
    sign_in_and_play
    expect(page).to have_content "Dave vs. SkyNet"
  end
  scenario 'can sign in with two players' do
    multi_sign_in_and_play
    expect(page).to have_content "Dave vs. Mittens"
  end
end