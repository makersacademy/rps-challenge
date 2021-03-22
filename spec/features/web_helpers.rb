def sign_in_and_play
	visit '/'
    fill_in "user", :with => "Will"
    click_on "submit"
end