set serveroutput on;
set verify on;

declare 
law_name Laws.name%type;
release_date Laws.r_date%type;
law_code Laws.code%type;
defi Laws.definition%type;
punish Laws.punishment%type;
common_place Laws.App_law%type;
cursor emp_c is select * from Laws;
find_name Laws.App_law%type;
search_place Laws.App_law%type;
count_l number;

begin
count_l:=0;

search_place:=&places_law_affected;
open emp_c;
for i in 1..9 loop
fetch emp_c into law_name,release_date,law_code,defi,punish,common_place;
if search_place = common_place then
dbms_output.put_line('Law Found');
dbms_output.put_line('Name :');
dbms_output.put_line(law_name);
dbms_output.put_line('Release date : ');
dbms_output.put_line(release_date);
dbms_output.put_line('Law code : ');
dbms_output.put_line(law_code);
dbms_output.put_line('Definition : ');
dbms_output.put_line(defi);
dbms_output.put_line('Punishment : ');
dbms_output.put_line(punish);
end if;
end loop;
close emp_c;
if count_l=0 then
dbms_output.put_line('Law Not found');
end if;
end;
/
