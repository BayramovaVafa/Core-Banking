create table cb_currencies
(id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
name varchar2(30),
code varchar2(30));

create or replace procedure cb_currencies_insert
(p_name varchar2, p_code varchar2) is 
BEGIN
  insert into cb_currencies
  (name, code)
  values (p_name, p_code);
  commit;
end;

create or replace procedure cb_currencies_update
(p_id number, p_name varchar2 default null,
p_code varchar2 default null) is 
BEGIN
update cb_currencies set
  name=nvl(p_name, name),
  address=nvl(p_code,code)
  where id=p_id;
  commit;
end;

begin
cb_currencies_insert('azn', '944');
end;





