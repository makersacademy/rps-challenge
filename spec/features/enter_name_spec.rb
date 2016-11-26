feature "Enter name" do

  scenario "submitting name" do
    sign_in_and_play
    expect(page).to have_content 'Mike: Choose your weapon!'
  end

end
