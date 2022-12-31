Database Systems Assignment 4
-----------------------------

Name: SRI MANVITH VADDEBOYINA
USC ID: 1231409457


Question  1: 

Linear Regression Model
------------------------
Equation:
---------
MEDV =

     -0.1084 * CRIM +
      0.0458 * ZN +
      2.7187 * CHAS=1 +
    -17.376  * NOX +
      3.8016 * RM +
     -1.4927 * DIS +
      0.2996 * RAD +
     -0.0118 * TAX +
     -0.9465 * PTRATIO +
      0.0093 * B +
     -0.5226 * LSTAT +    	
     36.3411


How many terms are in the equation, and 'why'? In other words, discuss the resulting equation.

There are a total of twelve (12) terms in linear regression equation along with the constant y-intercept value. 

The resulting equation formed is of the form: Y = B1*X1 + B2*X2 + B3*X3 + - - - + B11*X11 + B0
where 
1. Y is the predicted or expected value of the dependent variable (MEDV - median home price),
2. X1 through X11 are 11 distinct independent or predictor variables (CRIM, ZN, CHAS=1, NOX, RM, DIS, RAD, TAX, PTRATIO, B, LSTAT), 
3. B0 is the value of Y-intercept of Regression Equation,
4. B1 through B11 are the estimated regression coefficients.

From the above Linear Regression Equation we see that that three features CHAS=0, INDUS and AGE are missing in the equation. A simple reason for this could be that the features do not contribute much to the formation of relationship in the equation or the prediction. In Weka, we used the M5 attribute selection method that would build on all descriptors and remove the features that contribute less to the regression equation based on the prediction error value if there is no change in the value of error after removing the features one by one.  

We can also see that the features NOX and RM contribute the most to the prediction value.


Question 2:

Linear Regression Equation: 
---------------------------

num_rings = 
            -0.8249 * sex=I + 
            0.0577 * sex=M - 
            0.4583 * length + 
            11.0751 * diameter + 
            10.7615 * height + 
            8.9754 * whole_weight - 
            19.7869 * shucked_weight - 
            10.5818 * viscera_weight + 
            8.7418 * shell_weight + 
            3.8946


Question 3:

Linear Regression Equation: 
---------------------------

num_rings = -11.933 * length + 
            25.766 * diameter + 
            20.358 * height + 
            2.836