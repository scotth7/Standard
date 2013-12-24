# Standard Catalyst Functions

# Login to admin
def login (user,pass)
	$browser.goto $url_admin
	Watir::Wait.until {$browser.text.include? "Username"}
	$browser.text_field(:name => "_username").set user
	$browser.text_field(:name => "_password").set pass 
	$browser.button(:id => "_submit").click 
	Watir::Wait.until {$browser.text.include? "steve"}
end

# Logout Out
def logout (firstname)
	button firstname,"Logout"
	link "Logout","Username"
end

# Result
def test_result test
	if $count == 0
		puts "\n\n#{test}: Test Pass\n\n"
	else
		puts "\n\n#{test}: Test Fail\n\n"
	end
end
