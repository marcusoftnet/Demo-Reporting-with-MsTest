Feature: MsTest test generation
	In order to generate tests from SpecFlow.exe
	As a blogger
	I want to write some demonstration features that SpecFlow.exe can generate

Scenario: Add 50 and 70 should equal 120
	Given I have entered 50 into the calculator
	And I have entered 70 into the calculator
	When I press add
	Then the result should be 120 on the screen

Scenario: Add 20 and 40 should equal 60
	Given I have entered 20 into the calculator
	And I have entered 40 into the calculator
	When I press add
	Then the result should be 60 on the screen

Scenario Outline: Adding a lot of numbers
	Given I have entered <number 1> into the calculator
	And I have entered <number 2> into the calculator
	When I press add
	Then the result should be <expected result> on the screen

Examples:
	| number 1 | number 2 | expected result |
	| 1        | 2        | 3               |
	| 2        | 2        | 4               |
	| 5        | 2        | 7               |

# future feature - advanced stuff
@ignore 
Scenario: Subtract 50 from 70 should equal 20
	Given I have entered 70 into the calculator
	And I have entered 50 into the calculator
	When I press subtract
	Then the result should be 20 on the screen