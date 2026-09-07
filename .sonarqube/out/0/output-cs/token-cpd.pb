Ñ
fC:\Users\adriana\Documents\UPT\2026II\calidadYPruebasDeSoftware\bank\Bank.Domain\Models\BankAccount.cs
	namespace 	
Bank
 
. 
Domain 
. 
Models 
{ 
public 

class 
BankAccount 
{ 
private 
readonly 
string 
m_customerName  .
;. /
private 
double 
	m_balance  
;  !
public 
BankAccount 
( 
string !
customerName" .
,. /
double0 6
balance7 >
)> ?
{		 	!
ArgumentNullException

 !
.

! "
ThrowIfNull

" -
(

- .
customerName

. :
)

: ;
;

; <
m_customerName 
= 
customerName )
;) *
	m_balance 
= 
balance 
;  
} 	
public 
string 
CustomerName "
{ 	
get 
{ 
return 
m_customerName '
;' (
}) *
} 	
public 
double 
Balance 
{ 	
get 
{ 
return 
	m_balance "
;" #
}$ %
} 	
public 
void 
Debit 
( 
double  
amount! '
)' (
{ 	'
ArgumentOutOfRangeException '
.' (
ThrowIfNegative( 7
(7 8
amount8 >
)> ?
;? @'
ArgumentOutOfRangeException '
.' (
ThrowIfGreaterThan( :
(: ;
amount; A
,A B
	m_balanceC L
)L M
;M N
	m_balance 
-= 
amount 
;  
}   	
public"" 
void"" 
Credit"" 
("" 
double"" !
amount""" (
)""( )
{## 	'
ArgumentOutOfRangeException$$ '
.$$' (
ThrowIfNegative$$( 7
($$7 8
amount$$8 >
)$$> ?
;$$? @
	m_balance&& 
+=&& 
amount&& 
;&&  
}'' 	
}(( 
})) 