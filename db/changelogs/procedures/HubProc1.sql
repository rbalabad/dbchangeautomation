create or replace procedure HubProc1
as 
cursor c is select count(o.id) order_count
            from customers c, orders o 
            where c.id=o.cust_id;
begin 
	
	for r in c loop
		dbms_output.put_line(' Latest Order Count is : '|| r.order_count);
	end loop;
	
end;
/