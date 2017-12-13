feature 'Play Area' do

  scenario 'Shows player name' do
    enter
    sign_in
    expect(page).to have_content "#{@name} vs Ricky Martin"
    expect(page).to have_content "Choose your move, #{@name}:"
  end

end
