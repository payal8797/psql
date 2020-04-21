create or replace function divBy3(integer) returns text as $$
declare
num alias for $1;
output text;
begin
if num%3=0 then
output:=num || 'is divisible by 3';
else
output:=num || 'is not divisible by 3';
end if;
return output;
end;
$$ language plpgsql