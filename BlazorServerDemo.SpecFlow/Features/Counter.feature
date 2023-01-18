﻿@Counter
Feature: Counter should be properly incrementing its value

Scenario: Click increases the counter 2
	Given a user in the counter page
	When the increase button is clicked 2 times
	Then the counter value is 2
	

Scenario: Click increases the counter 3
	Given a user in the counter page
	When the increase button is clicked 3 times
	Then the counter value is 3
	
Scenario: Counter doesnt update view from 4-6
	#this is verifying the ShouldRender on the counter component
	Given a user in the counter page
	When the increase button is clicked 4 times
	#counter at 4
	Then the counter value is 3
	When the increase button is clicked 1 times
	# counter at 5
	Then the counter value is 3
	When the increase button is clicked 1 times
	# counter at 6
	Then the counter value is 3
	When the increase button is clicked 1 times
	# counter at 7
	Then the counter value is 7
	