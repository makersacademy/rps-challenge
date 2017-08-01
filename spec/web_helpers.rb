
def register
	visit '/'
	fill_in :player_1_name, with: "Sam"
	click_button('Submit')
end