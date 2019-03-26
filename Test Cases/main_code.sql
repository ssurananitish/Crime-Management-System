set serveroutput on;
set verify on;

declare 
law_name Laws.name%type;
release_date Laws.r_date%type;
law_code Laws.code%type;
defi Laws.definition%type;
punish Laws.punishment%type;
common_place Laws.App_law%type;
cursor emp_c1 is select * from Laws;
cursor emp_c2 is select * from Laws;
cursor emp_c3 is select * from Laws;
find_name Laws.App_law%type;
search_place Laws.App_law%type;
find_code Laws.code%type;
count_l number;
choice number;

begin
dbms_output.put_line('Enter the choice');
dbms_output.put_line('1. Search by law name');
dbms_output.put_line('2. Search by law code');
dbms_output.put_line('3. Search by where the law is affected');
choice:&choice;
count_l:=0;
if choice=1 then
find_name:=&law_name;
open emp_c;
for i in 1..9 loop
fetch emp_c into law_name,release_date,law_code,defi,punish,common_place;
if find_name = law_name then
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
dbms_output.put_line('Common places that are affected is : ');
dbms_output.put_line(common_place);
count_l:=1;
end if;
close emp_c;
elsif choice=2 then
find_code:=&law_code;
open emp_c;
for i in 1..9 loop
fetch emp_c into law_name,release_date,law_code,defi,punish,common_place;
if find_code = law_code then
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
dbms_output.put_line('Common places that are affected is : ');
dbms_output.put_line(common_place);
count_l:=1;
end if;
close emp_c;
elsif choice=3 then
search_place:=&places_law_affected;
open emp_c;
for i in 1..9 loop
fetch emp_c into law_name,release_date,law_code,defi,punish,common_place;
if search_place = common_place then
dbms_output.put_line('Law Found');
dbms_output.put_line('Definition is : ');
dbms_output.put_line(' ');
dbms_output.put_line(defi);
dbms_output.put_line('Punishment is : ');
dbms_output.put_line(punish);
count_l:=1;
end if;
end loop;
close emp_c;
if count_l=0 then
dbms_output.put_line('Law Not found');
end if;
end;
/
