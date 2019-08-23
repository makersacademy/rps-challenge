feature "homepage" do
  it 'allows the user to enter name, displays name' do
    sign_in_and_play
    expect(page).to have_content('Welcome, Chris')
  end
end
