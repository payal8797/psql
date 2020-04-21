create or replace function pow(integer,integer) returns integer as $$
begin
        if $2=1 then
                return $1;
        end if;
        if $2=0 then
                return 1;
        end if;
        return $1*pow($1,$2-1);
end;
$$ language plpgsql;


create operator ^(procedure =pow,leftarg=integer,rightarg=integer);
