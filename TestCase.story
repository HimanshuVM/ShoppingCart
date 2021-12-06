!-- List Of Search functionality Scenario and Test cases in GWT form

!-- TC No. 01
Scenario: Verify that when user enter valide keyword in 'search' box then search hint should prompt
Given User is on Home page
When User enter "Print" keyword in 'search' box
Then Keyword relted searched hint should display below 'search' box

!-- TC No. 02
Scenario: Verify that when user enter valide keyword having three latter only and not as exact keyword in 'search' box then search hint should prompt
Given User is on Home page
When User enter "Pri" keyword in 'search' box
Then Keyword relted searched hint should display below 'search' box

!-- TC No. 03
Scenario: Verify that when user search with valide keyword then respective search item should display 
Given User is on Home page
When User enter "Print" keyword in 'search' box
And User click on search icon
Then User should able to see list of respected search item
And User should able to see total number of search result count

!-- TC No. 04
Scenario: Verify that when user search with valide keyword and click on enter key then respective search item should display 
Given User is on Home page
When User enter "Print" keyword in 'search' box
And User click on enter key
Then User should able to see list of respected search item
And User should able to see total number of search result count

!-- TC No. 05
Scenario: Verify that when user search with valide keyword having space before and after keyword then respective search item should display
Given User is on Home page
When User enter " Print " keyword in 'search' box
And User click on search icon
Then User should able to see list of respected search item
And User should able to see total number of search result count

!-- TC No. 06
Scenario: Verify that when user search with valide keyword having special character then respective search item should display 
Given User is on Home page
When User enter "Print*" keyword in 'search' box
And User click on search icon
Then User should able to see list of respected search item
And User should able to see total number of search result count

!-- TC No. 07
Scenario: Verify that when user search with valide keyword as a repited value multiple time then respective search item should display 
Given User is on Home page
When User enter "Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts" keyword in 'search' box
And User click on search icon
Then User should able to see list of respected search item
And User should able to see total number of search result count as 1

!-- TC No. 08
Scenario: Verify that when user search with valide keyword having three latter only and not as exact keyword then respective search item should display
Given User is on Home page
When User enter "Pri" keyword in 'search' box
And User click on search icon
Then User should able to see list of respected search item
And User should able to see total number of search result count

!-- TC No. 09
Scenario: Verify that when user search with valide keyword having three latter only along with special character and not as exact keyword then respective search item should display
Given User is on Home page
When User enter "Pri-" keyword in 'search' box
And User click on search icon
Then User should able to see list of respected search item
And User should able to see total number of search result count

!-- TC No. 10
Scenario: Verify that when user navigate to all the pages of website then 'search' box should display at all the pages 
Given User is on Home page
When User navigate to all the pages respectively 
Then User should able to see 'search' box at all the respective pages 

!-- TC No. 11
Scenario: Verify that when user search with valide but keyword having less than two latter then velidation should display 
Given User is on Home page
When User enter "Pr" keyword in 'search' box
And User click on enter key
Then User should able to see validation message as "No results were found for your search "Pr"" 

!-- TC No. 12
Scenario: Verify that when user enter valide keyword having less then three latter only and not as exact keyword in 'search' box then search hint should not prompt
Given User is on Home page
When User enter "Pr" keyword in 'search' box
Then Keyword relted searched hint should not display below 'search' box

!-- TC No. 13
Scenario: Verify that when user search without keywod then velidation should display 
Given User is on Home page
When User do not enter any keyword in 'search' box
And User click on enter key
Then User should able to see validation message as "Please enter a search keyword"

!-- TC No. 14
Scenario: Verify that when user search with Invalide keyword then velidation should display 
Given User is on Home page
When User enter "Levies" keyword in 'search' box
And User click on enter key
Then User should able to see validation message as "No results were found for your search "Levies""

!-- TC No. 15
Scenario: Verify that when user is on search fild and click on tab then navigate search icon 
Given User is on Home page
When User click on 'search' box
And User click on tab key
Then User should able to see that focus shift to search icon
