*** Settings ***
Documentation       To validate the login form
Library                 SeleniumLibrary


*** Test Cases ***

Validate successful login form
    Open the browser with the Mortagae Payment URL
    Fill the login form




Create a booking
    Create a service from admin panel


*** Keywords ***
Open the browser with the Mortagae Payment URL

    Create Webdriver    Chrome      executable_path='C:\Users\Agha\AppData\Local\Programs\Python\Python311\Scripts'

    Go to           https://dev.revauae.com/admin/login

    Maximize Browser Window



Fill the login form
    Input Text          id:email        admin@reva.com
    Input Password      id:password     12341234
    Click Button        xpath:(//button[normalize-space()='Sign In'])[1]
    Sleep               10s


Create a service from admin panel

     Click Element      xpath://a[@href='https://dev.revauae.com/admin/booking/calender']       #click on the calendar


     Execute Javascript     var g=document.querySelector("body").click()                         # click on the loader

     Sleep               20s


     Execute Javascript     var g=document.querySelector("body").click()                         # click on the loader


#start  date from here




#end  date  here



#start staff drop down here

     Click Element     //select[@id='all_staff']                                            #click on the tab of drop down


     Sleep               4s

     Execute javascript  var d=document.querySelector("body").click()                                               # click on the loader

     Sleep               10s


     Click Element     //option[@value='10']                           # select the sp for which you were creating service
     Sleep               10s


     Execute javascript  var d=document.querySelector("body").click()                                               # click on the loader


     Click Element     //select[@id='all_staff']                       #click again the drop down tab to close

     Execute javascript  var d=document.querySelector("body").click()                                               # click on the loader

     Sleep               10s





     Execute javascript  var d=document.querySelector("body").click()                                               # click on the loader


     Sleep               10s
#end staff drop down here





 #start  date from here


     Click Element      xpath://*[@type='text' or @id='date-range-picker']                             #click on the date picker

     Execute javascript  var d=document.querySelector("body").click()                                   # click on the loader

     Sleep               4s







     Execute Javascript     var a=document.querySelector("li[data-range-key='Tomorrow']").click()               # I have use javascript because the text is on javascript


     Sleep                  4s

     Execute javascript     var d=document.querySelector("body").click()                                               # click on the loader

     Sleep               10s



#end  date  here


#Tap on the cell start here



    Execute Javascript     document.querySelector("tbody tr:nth-child(23) td:nth-child(2)").click()
    Sleep               20s


     Execute javascript  var d=document.querySelector("body").click()                                               # click on the loader



    ##Click Element       (//td[contains(@class,'fc-timegrid-slot fc-timegrid-slot-lane')])[23]         #till here it is passed
    Sleep                2s



   #${table_cell} =   Get Table Cell   xpath=(//td[contains(@class,'fc-timegrid-slot fc-timegrid-slot-lane')])[27]   1   1
    #Click Element          ${table_cell}

    Execute javascript  var d=document.querySelector("body").click()



    Mouse up            //div[contains(text(),'8pm')]


    


    Click element       //i[@class='phpdebugbar-fa phpdebugbar-fa-leaf']



    Wait Until Element is Visible   (//td[contains(@class,'fc-timegrid-slot fc-timegrid-slot-lane')])[23]

    Element Should be visible       (//td[contains(@class,'fc-timegrid-slot fc-timegrid-slot-lane')])[23]




    Click element                   //a[@class='phpdebugbar-close-btn']

    Sleep                           4s


    Execute javascript              var e=document.querySelector("tbody tr:nth-child(20) td:nth-child(2)")

    Sleep                           2s

    Click Element                  //td[@class='fc-timegrid-slot fc-timegrid-slot-lane ' and @data-time='20:00:00']

    Sleep                           20s



    Click Element                   //button[normalize-space()='Create Booking']


    Execute javascript              var d=document.querySelector("body").click()                                               # click on the loader


    Sleep                           5s


    Click element                   //button[normalize-space()='Create']


    Execute javascript              var d=document.querySelector("body").click()                                               # click on the loader



    Sleep                           5s


    Execute javascript              var d=document.querySelector("body").click()                                               # click on the loader


    Click element                   //input[@data-value='current_location' and @name='service_providers[1][location_type]']


    Sleep                            4s


    Click element                   //input[@id='new_customer_checked']



    Execute javascript              var h=document.querySelector("body").click()



    Sleep                            3s

    Input text                     //input[@placeholder='Enter The EN Name']       Random 1




    Execute Javascript             var  g=document.querySelector("#spinner").click()


    Sleep                           3s


    Input text                    //input[@placeholder='Enter The AR Name ']     Random 1



    Sleep                           2s



    Click element               //div[@class='iti__flag-container']



    Sleep                           2s


    Click element               //li[@id='iti-0__item-ae']



    Sleep                           2s


    Input text                  //input[@id='phone']           508051000








    Sleep                           2s



    Input text                  //input[@id='google_address_searching']         SZABIST University - Dubai - United Arab Emirates



    Sleep                           4s









    #Sleep                       4s






    #Sleep                       4s





    ##Click element           //input[@id='existing-address']


    ##Sleep                       2s

    ##Click element           //span[@id='select2-customer_existing_address-container']


     ##Sleep                       2s


    ##Click element           //li[@id='select2-customer_existing_address-result-sfk1-302']



    ##Sleep                       4s



    Input text       //input[@class='form-check-input new_location therapist_location']     SZABIST University - Dubai - United Arab Emirates

    Sleep               2s

    Click Element       //button[normalize-space()='Create Booking']



    Execute Javascript   var  j=document.querySelector("#spinner").click()

    Sleep                       20s





     #Execute Javascript   var  b=document.querySelector("#spinner").click()


