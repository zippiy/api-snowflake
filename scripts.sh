1.
## Account
snowsql -a $account -u $user -d $db -s public

2. 
list @~/staged
COPY INTO Products FROM '@~/staged/' file_format = (format_name = csv1)   pattern='.*txt.gz'
