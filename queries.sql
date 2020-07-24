select * from movies limit 10;
select * from ratings limit 100;
rollback;
commit;
ALTER TABLE ratings
	alter column timestamp set data type timestamp without time zone
	using to_timestamp(timestamp);