feature "Scores" do
  scenario 'keeps track of player scores' do 
    sign_up_play
    expect(page).to have_content "Ronaldo: 0"
  end 
  scenario 'keeps track of cpu scores' do 
    sign_up_play
    expect(page).to have_content "CPU: 0"
  end 
end
