

#  A d a p t e r 

# #  C e l 

The aim of the task is to verify the ability to use design patterns in practice on the example of the pattern * * a d a p t e r * * . 

# #  O p i s  z a d a n i a 

​ 

Suppose we have a class * * E l e m e n t * * having two attributes: 

​ 

 -  * * t y p e * *  ( m o ż e  p r z y j m o w a ć  j e d n ą  z  d w ó c h  w a r t o ś c i :  * * T Y P E _ 1 * * ,  * * T Y P E _ 2 * * ) 

 -  * * v a l u e * *  ( l i c z b a  z m i e n n o p r z e c i n k o w a ) 

 

and the class * * S t a t i s t i c s P r i n t e r * * with one public method * * p r i n t ( S t a t i s t i c s  s t a t i s t i c s ) * * , where the interface * * S t a t i s t i c s * * is defined as follows: 

​ 

    p u b l i c  i n t e r f a c e  S t a t i s t i c s  { 

	    d o u b l e  g e t M i n V a l u e ( ) ; 

	    d o u b l e  g e t M a x V a l u e ( ) ; 

	    d o u b l e  g e t A v e r a g e ( ) ; 

	    i n t  g e t E l e m e n t C o u n t ( ) ; 

	    i n t  g e t U n i q u e E l e m e n t C o u n t ( ) ; 

	} 

* * S t a t i s t i c s P r i n t e r * * has one responsibility. Responsible for printing on the standard output the values ​​returned by the interface * * S t a t i s t i c s * * . 

​ 

Implement the classes * * E l e m e n t * * i * * S t a t i s t i c s P r i n t e r * * . In the method, * * m a i n * * create a collection containing any number of * * E l e m e n t * * class instances, and then print the statistics for this collection using the class instance * * S t a t i s t i c s P r i n t e r * * for: 

 -  w s z y s t k i c h  e l e m e n t ó w  l i s t y 

 -  w s z y s t k i c h  e l e m e n t ó w  l i s t y  o  t y p i e  * * T Y P E _ 1 * * 

 -  w s z y s t k i c h  e l e m e n t ó w  l i s t y  o  t y p i e  * * T Y P E _ 2 * * 

	 >  Z a u w a ż ,  ż e  i n t e r f e j s  k o l e k c j i  n i e  o d p o w i a d a  t e m u ,  k t ó r e g o  p o t r z e b u j e  m e t o d a  * * p r i n t * * . 

​ 

Use the design pattern * * a d a p t e r * * to enable collections of elements of type * * E l e m e n t * * to work with the class * * S t a t i s t i c s P r i n t e r * * . 

​ 

The solution to the problem is the project * * g r a d l e * * with the source code in * * J a v a  1 1 * * (directory * * s r c * * , files * * b u i l d . G r a d l e * * and * * s e t t i n g s . g r a d l e * * ) meeting the above requirements. 

