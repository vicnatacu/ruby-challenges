# Ruby Intro Answer Sheet

## Check your ruby version
Your ruby version: 

## Floats and integers 
1. 3.0 / 2
    1. Expected (integer or float):  float    
    2. Actual (integer or float): float
    3. Answer: 1.5
2. 3 / 2.0
    1. Expected (integer or float): float     
    2. Actual (integer or float): float
    3. Answer: 1.5
3. 4 ** 2.0
    1. Expected (integer or float): flaot     
    2. Actual (integer or float): float
    3. Answer: 16.0
4. 4.1 % 2
    1. Expected (integer or float): float    
    2. Actual (integer or float): float
    3. Answer: 16.0

## Strings
1. "tom" * 3
    * Expected:  "tomtomtom"          
    * Actual: "tomtomtom"
2. "tom" + "tom"
    * Expected:   "tomtom"         
    * Actual: "tomtom"
3. "tom" + 1
    * Expected:  can't convert          
    * Actual: no implicit conversion of Integer into String
4. "tom" / 2
    * Expected: can't convert           
    * Actual: undefined method '/' for "tom":String
## Calculations in IRB
1. How many hours are in a year?
    * Answer: 24 * 365 8760
2. How many minutes are in a decade?
    * Answer: 60 * 24 * 365 * 10 525600
3. How many seconds old are you?
    * Answer: Time.parse("1971-08-13-07:15")
=> 1971-08-13 07:15:00 +1000
dob = Time.parse("1971-08-13-07:15")
=> 1971-08-13 07:15:00 +1000
dob
=> 1971-08-13 07:15:00 +1000
Time.now
=> 2019-02-21 13:03:09 +1000
Time.now.to_i
=> 1550718245
Time.now.to_i - dob.to_i
=> 1499838648 as worked out in FT