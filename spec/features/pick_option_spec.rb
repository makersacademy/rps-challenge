feature "picking an option" do
  it "shows the user the outcome of the option they picked" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end
end
