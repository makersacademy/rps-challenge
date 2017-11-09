feature 'Play result' do
  before do
    enter
    sign_in
    play
  end

  scenario 'Page shows play specific and overall info' do
    expect(page).to have_content "You chose:"
    expect(page).to have_content "Ricky chose:"
    expect(page).to have_content "Result:"
    expect(page).to have_content "Accumulated:"
  end

  scenario 'Again button redirects to a new play' do
    play_again
    expect(page).to have_content "#{@name} vs Ricky Martin"
    expect(page).to have_content "Choose your move, #{@name}:"
  end
end
