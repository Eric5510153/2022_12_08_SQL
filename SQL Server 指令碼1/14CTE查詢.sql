--CTE(common table expression)


with test
as
(
   select p.*,e.�m�W,e.�~��
   from ���u as e inner join �б� as p
   on e.�����Ҧr��=p.�����Ҧr��
)
select * from test

--Recursive(���j)

with �D�޶��h
as
(
     select ���u�r��,�m�W,1 as ���h 
     from �D�� where �D�ަr�� is null
     union all
     select �D��.���u�r��,�D��.�m�W,+1 as ���h
     from �D��  inner join �D�޶��h  on �D��.�D�ަr��=�D�޶��h.���u�r�� 
)
select * from �D�޶��h order by ���h

---�֪��D�r��=A123456789
--���'A222222222',E444006666

--�֪��D�r��=A222222222 ��E444006666 �ݲĤT��
--D333300333,H098765432,D444403333,F213456780

