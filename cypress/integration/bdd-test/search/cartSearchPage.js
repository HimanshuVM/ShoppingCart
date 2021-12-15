/// <reference types="cypress" />

class cartSearchPage{

    static cartSearchHomePage(){
                let url = Cypress.env('ENV');
                if (url == 'prod')
                    cy.visit('http://automationpractice.com/index.php')
                else if (url == 'qa')
                    cy.visit('http://automationpractice.com/index.php')
                else if (url == 'stg')
                    cy.visit('http://automationpractice.com/index.php')
                else
                    cy.visit('http://automationpractice.com/index.php')
    }

     static cartSearchInput(keywords){
        cy.get('input#search_query_top').as('cartSearchInput') // Created alies for future use and easy maintenance
        cy.get('@cartSearchInput').should('be.visible')
        cy.get('@cartSearchInput').clean
        cy.get('@cartSearchInput').type(keywords)
     }

     static cartSearchBlankInput(){
        cy.get('input#search_query_top').focus().blur()
     }

     static cartSearchInputTab(){
        cy.get('input#search_query_top').tab()
     }

     static cartSearchBtnFocus(){
        cy.focused().should('have.attr', 'name').and('eq', 'submit_search')
     }

     static cartSearchBtnAction(button){
        if(button == 'search'){
            cy.get('#searchbox > .btn').click()
        } else if (button == 'Enter'){
            cy.get('@cartSearchInput').type('{enter}')
        }

     }

     static cartSearchPopupListIsVisible(){
        cy.wait(1500)
        cy.get('.ac_results > ul > :nth-child(1)').should('be.visible')
     }

    static cartSearchPopupListIsNotVisible(){
            cy.wait(1000)
            cy.get('.ac_results > ul > :nth-child(1)').should('not.exist')
    }

     static cartSearchTotalCount(){
        cy.wait(1000)
        cy.get('span[class="heading-counter"]').should('be.visible')
     }

     static cartSearchValidation(validationKeyword){
             cy.wait(1000)
             cy.contains(validationKeyword)
          }

     static cartSearchedList(){
        cy.wait(1000)
        cy.get('.product_list').should('be.visible')
     }

     static navigateAllPage(){
        // For now just validating with one page as based on frontend development approach we can smartly cover this with single page
        cy.visit('http://automationpractice.com/index.php?controller=order')
     }

     static cartSearchDatabaseValidation(){
     const  count = 0;
     cy.task('queryDb', `SELECT COUNT(*) as "rowCount" FROM Product WHERE productName LIKE "Print%"`).then((result) => {
                 expect(result[0].rowCount).to.equal(1)
                 count = result[0].rowCount
       })
      cartSearchValidation(count)
     }
}

export default cartSearchPage;