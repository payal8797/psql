Create or replace function testfunction(real) returns real as $$
begin
return $1 * 2 ;
end;
$$ language plpgsql ;