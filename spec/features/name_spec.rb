feature 'Homepage' do
  scenario '#registers name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Ana!'
  end

end
