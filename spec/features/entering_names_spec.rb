
feature "Enter names" do
  scenario 'Submit name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Joe'
  end
end
