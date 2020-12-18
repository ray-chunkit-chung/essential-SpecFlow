﻿Feature: 2 Gherkin Keywords 
Gherkin uses a set of special keywords to give structure and meaning to executable specifications. 
Each keyword is translated to many spoken languages; in this reference we’ll use English. 
You can read more which langauges are supported [here](<BookShop.AcceptanceTests/1 LivingDoc Features/1.1 Using the Gherkin Language/3 Supported Languages.feature>).

The primary keywords are:
- Feature
- Rule (as of Gherkin 6)
- Example (or Scenario)
- Given, When, Then, And, But for steps (or *)
- Background
- Scenario Outline (or Scenario Template)
- Examples

Scenario: Add two numbers
	Given the first number is 50
	And the second number is 70
	When the two numbers are added
	Then the result should be 120