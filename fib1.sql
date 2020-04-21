create or replace function my_fib1(fib_for integer) returns setof integer as $$
declare
retval integer:=0;
nxtval integer:=1;
tmpval integer;
begin
        for num in 1..fib_for loop
                return next retval;
                tmpval:=retval;
                retval:=nxtval;
                nxtval:=tmpval+nxtval;
        end loop;
end;
$$ language plpgsql;
