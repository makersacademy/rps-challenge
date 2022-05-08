feature "Enter player's name" do
  scenario 'submitting the name' do
    sign_in_and_play
    expect(page).to have_content 'Luiza'
  end
end