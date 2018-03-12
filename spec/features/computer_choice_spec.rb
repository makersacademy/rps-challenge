feature "computer's options" do

  it 'Computer randomly choses Rock' do
    srand(15)
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("Computer chose Rock")
  end

  it 'Computer randomly choses Paper' do
    srand(10)
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("Computer chose Paper")
  end

  it 'Computer randomly choses Scissors' do
    srand(5)
    sign_in_and_play
    click_button("Rock")
    expect(page).to have_content("Computer chose Scissors")
  end
end
