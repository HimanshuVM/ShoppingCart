# List Of Search functionality Scenario and Test cases in GWT form
Feature: Shopping Cart Search

# TC No. 01
Scenario Outline: Verify that when user enter valid keyword or keyword having three latter only and not as exact keyword in 'search' box then search hint should prompt
Given User is on Home page
When User enter '<searchKeyword>' keyword in search box
Then Keyword related searched hint should display below search box
  Examples:
    | searchKeyword |
    | Print         |
    | Pri           |

# TC No. 02
Scenario Outline: Verify that when user search with valid keyword and click on search button or enter key then respective search item should display
Given User is on Home page
When User enter "Print" keyword in search box
And User click on '<button>'
Then User should able to see list of respected search item
And User should able to see total number of search result count
  Examples:
    | button |
    | search |
    | Enter  |

# TC No. 03
Scenario Outline: Verify that when user search with valid keyword having space or special char before and after keyword then respective search item should display
Given User is on Home page
When User enter '<searchKeyword>' keyword in search box
And User click on search icon
Then User should able to see list of respected search item
And User should able to see total number of search result count
  Examples:
    | searchKeyword |
    | Print         |
    | Print*        |
    | Pri           |
    | Pri*          |

# TC No. 04
Scenario: Verify that when user search with valid keyword as a repeated value multiple time then respective search item should display
Given User is on Home page
When User enter "Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts" keyword in search box
And User click on search icon
Then User should able to see list of respected search item
And User should able to see total number of search result count as 1

# TC No. 5
Scenario: Verify that when user navigate to all the pages of website then 'search' box should display at all the pages 
Given User is on Home page
When User navigate to all the pages respectively 
Then User should able to see search box at all the respective pages

# TC No. 6
Scenario Outline: Verify that when user search with valid but keyword having less than two latter or Invalid keyword then validation should display
Given User is on Home page
When User enter '<searchKeyword>' keyword in search box
And User click on search icon
Then User should able to see validation message as '<validation>'
  Examples:
    | searchKeyword | validation                            |
    | Pr            | No results were found for your search |
    | Levies        | No results were found for your search |

# TC No. 7
Scenario: Verify that when user enter valid keyword having less then three latter only and not as exact keyword in 'search' box then search hint should not prompt
Given User is on Home page
When User enter "Pr" keyword in search box
Then Keyword related searched hint should not display below search box

# TC No. 8
Scenario: Verify that when user search without keyword then validation should display
Given User is on Home page
When User do not enter any keyword in search box
And User click on search icon
Then User should able to see validation message as 'Please enter a search keyword'

# TC No. 9
Scenario: Verify that when user is on search field and click on tab then navigate search icon
Given User is on Home page
When User click on tab key from search box
Then User should able to see that focus shift to search icon

# TC No. 10 - Search functionality actual behaviour must validate with DB as this is simple functionality I have added one TC only
Scenario: Verify that when user search with valid keyword then respective search item should display with total count and verify with database count
Given User is on Home page
When User enter "Print" keyword in search box
And User click on search icon 
And User execute DB query with same keyword "Print" 
Then User should able to see total number of search result count
And User should able to see total number of search result count and database query count should match 
