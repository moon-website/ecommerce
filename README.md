# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

 Review Code
Checked at:
<!-- Check best practices of code. New code must <= this -->
rails_best_practices -f html .
=>  warnings
<!-- Check security in code. New code must <= this -->
brakeman -o brakeman-report.html
=> 0 warnings
<!-- Check coding standard, performance in code. New code must <= this -->
rubocop --format html -o rubocop-report.html
=>  warnings
<!-- Check routes. New code must <= this -->
rails traceroute > traceroute-report.txt
=>
<!-- Check performace, using memory, complexity. New code must (this - 1% <= score <= this + 1%), maximum 100% -->
rubycritic --no-browser -f html .
=>
