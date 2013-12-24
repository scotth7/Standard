# Standard functions

# Select a Button
def button (text,response)
	$browser.button(:text => text).click
	Watir::Wait.until {$browser.text.include? response}
end

# Select a Link
def link (text,response)
	$browser.a(:text => text).click
	Watir::Wait.until {$browser.text.include? response}
end

# defined Environment
def repeat_test
	puts "Please select the number of test runs"
	$repeat_test_number = gets.strip.to_i
end

# Compare
def compare_string (a,b,text)
	if a != b
		puts "Error: #{text} no match"
	end
end

# include
def include_string (a,b,text)
	if a.include? b
		puts "Error: #{text} - #{b} is not found within #{a}:"
	end
end

# opening an URL
def open_url (location,text)
	$browser.goto location
	Watir::Wait.until {$browser.text.include? text}
end

# Confirm text string is presented
def text_search (string,text)
	if !$browser.text.include? string 
		puts "Error: #{text} not found"
	end
end

# Confirm text string is Not presented
def text_not_search (string,text)
	if $browser.text.include? string 
		puts "Error: #{text} should not be present"
	end
end

# Get an user input choice
def user_choice (text)
	puts text
	response = gets.strip.to_i
	return response
end