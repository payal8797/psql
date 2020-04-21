create or replace function testfunction() returns text as $$
declare
five constant integer:=5;
ten integer not null:=10;
myletter char default 'a';
begin
        return myletter;
end;    
$$ language plpgsql;
