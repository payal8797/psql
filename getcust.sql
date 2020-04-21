Create or replace function getcust(text) returns text as $$
declare
First_name alias for $1 ;
Last_name customer.lname%type ;
begin
select into Last_name lname from customer where fname = First_name ;
return First_name || ‘ ‘ || Last_name ;
end;
$$ language plpgsql ;