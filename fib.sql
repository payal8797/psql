create or replace function my_fib(fib_for integer) returns integer as $$
declare
ret integer:=0;
nxt integer:=1;
tmp integer;
begin
        for num in 1..fib_for loop
                tmp:=ret;
                ret:=nxt;
                nxt:=tmp+nxt;
        end loop;
return ret;
end;
$$ language plpgsql;
