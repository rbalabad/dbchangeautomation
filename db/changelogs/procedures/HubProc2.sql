create or replace procedure HubProc2
as 
cursor c is select count(c.id) cust_count
            from customers c, orders o 
            where c.id=o.cust_id;
begin 
	
	for r in c loop
		dbms_output.put_line('Customer Count is : '|| r.cust_count);
	end loop;
	
end;
/