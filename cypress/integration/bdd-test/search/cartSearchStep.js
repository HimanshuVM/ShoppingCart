import { Given, When, Then } from 'cypress-cucumber-preprocessor/steps'
import search from './cartSearchPage'
import cartSearchPage from './cartSearchPage'

Given('User is on Home page', () => {
    cartSearchPage.cartSearchHomePage();
})

When('User enter {string} keyword in search box', searchKeyword => {
    cartSearchPage.cartSearchInput(searchKeyword);
})

When('User enter "Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts" keyword in search box', ()=>{
   cartSearchPage.cartSearchInput('Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts Faded Short Sleeve T-shirts');
})

When('User navigate to all the pages respectively', () => {
   cartSearchPage.navigateAllPage();
})

When('User enter "Pr" keyword in search box',()=> {
    cartSearchPage.cartSearchInput('Pr');
})

When('User do not enter any keyword in search box',()=>{
    cartSearchPage.cartSearchBlankInput();
})

When('User click on tab key from search box', ()=>{
    cartSearchPage.cartSearchInputTab();
})

Then('User should able to see that focus shift to search icon', ()=>{
    cartSearchPage.cartSearchBtnFocus();
})
Then('Keyword related searched hint should display below search box', ()=>{
    cartSearchPage.cartSearchPopupListIsVisible();
})

Then('Keyword related searched hint should not display below search box', ()=>{
    cartSearchPage.cartSearchPopupListIsNotVisible();
})

Then('User should able to see search box at all the respective pages',() => {
    cartSearchPage.cartSearchInput('searchKeyword');
})

Then('User should able to see validation message as {string}', validation =>{
    cartSearchPage.cartSearchValidation(validation);
})

And('User click on {string}', button => {
    cartSearchPage.cartSearchBtnAction(button);
})

And('User click on search icon', ()=>{
    cartSearchPage.cartSearchBtnAction('search');
})

Then('User should able to see list of respected search item', () =>{
    cartSearchPage.cartSearchedList();
})

And('User should able to see total number of search result count', ()=>{
    cartSearchPage.cartSearchTotalCount();
})

And('User should able to see total number of search result count as 1', ()=>{
    cartSearchPage.cartSearchValidation('1 result has been found.');
})

// As Db details is not available I have commented this implementation once correct db details updated in cypress.json
And('User should able to see total number of search result count and database query count should match', ()=>{
    //cartSearchPage.cartSearchDatabaseValidation();
})