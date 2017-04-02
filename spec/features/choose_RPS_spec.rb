feature "Choose Rock / Paper / Scissors feature" do

  scenario 'Choose Rock' do
    sign_in_and_play
    click_button "Rock"
    expect(page).to have_content "You chose with confidence"
  end

end
