describe "homepage", type: :feature do
	
  it "shows up" do
    visit '/'
    expect(page).to have_content "Let's play Rock Paper Scissors!" 
  end
end
