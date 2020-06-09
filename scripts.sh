1.
## Account - Unix style
snowsql -a $account -u $user -d $db -s public
## Account - Windows style
set SNOWSQL_PWD=
snowsql -a %account% -u %user% -d %db% -s public

2. 
put file://C:\temp\set*.txt @~/staged/set;
put file://./c*.txt @~/staged/set;

list @~/staged;
COPY INTO Products FROM '@~/staged/' file_format = (format_name = csv1)   pattern='.*txt.gz'
COPY INTO Seller2Keyword FROM '@~/staged/set' file_format = (format_name = csv1)   pattern='.*txt.gz'


3.
select count(*), seller from "ALLEGRO"."PUBLIC"."PRODUCTS" group by seller HAVING COUNT(*) > 10;
