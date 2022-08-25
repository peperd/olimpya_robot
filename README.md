![GitHub repo size](https://img.shields.io/github/repo-size/peperd/olympia_robot?logo=Github)
![visitors](https://visitor-badge.glitch.me/badge?page_id=https://github.com/peperd/olympia_robot&left_color=green&right_color=red)
![PyPI - Python Version](https://img.shields.io/pypi/pyversions/robotframework)
![Robotframework](https://img.shields.io/badge/Robotframework-black?)
![Selenium](https://img.shields.io/badge/Selenium4.0-webdriver-green?style=plastic&logo=Selenium)


### Sample Test cases for `https://www.olympia.casino/`

stack: ***Python***, ***Robotframework***, ***Selenium***

***QA end2end flow***
1. Go to the https://www.olympia.casino/
2. Open sign up modal
3. Open any temp mail website (like https://tempmail.dev/en) in a separate tab
4. Copy email address from step 3
5. Fill in email in modal from step 2
6. Generate random password and fill password field
7. Choose Aud currency
8. Find Next button by TEXT (required and important step) 
9. Click Next
10. Fill all other fields, continue to click next and stop at the last step (before submit).

## Get started
1. clone repository `https://gitlab.com/z357/olympia_robot.git`
2. go to project folder
3. run `source venv/bin/activate`
4. run `pip3 install -r requirements.txt`
5. run test `robot tests/TC.robot --outputdir results`
