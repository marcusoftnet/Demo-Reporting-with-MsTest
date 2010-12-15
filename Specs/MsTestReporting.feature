Feature: MsTest reporting generation
	In order to generate a nice report from my feature
	As a blogger
	I want to write some demonstration features that SpecFlow.exe can generate a nice report for

Scenario: Passing scenario
	Given I have entered 50 into the calculator
	And I have entered 70 into the calculator
	When I press add
	Then the result should be 120 on the screen

Scenario: Failing scenario
	Given I have entered 50 into the calculator
	And I have entered 70 into the calculator
	When I press add
	Then the result should be 12 on the screen

@wip
Scenario: Passing scenario with a tag
	Given I have entered 20 into the calculator
	And I have entered 40 into the calculator
	When I press add
	Then the result should be 60 on the screen

Scenario Outline: Passing scenario with examples
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
Scenario: Ignored scenario
	Given I have entered 70 into the calculator
	And I have entered 50 into the calculator
	When I press subtract
	Then the result should be 20 on the screen