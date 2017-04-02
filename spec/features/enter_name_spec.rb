feature "Enter name feature" do

  scenario 'submit name' do
    sign_in_and_play
    expect(page).to have_content('Choose wisely:')
  end

end
