--Instead Trigger
--���Ӫ��ާ@���N��

--��ڭn�s�W�ҵ{,�Y�s�W�ɵo�{�ӽҵ{�w�s�b,�ڴN��H�u�ק�ҵ{��ơv���N��Ӫ��s�W�ʧ@

--after trigger
--instead trigger


create trigger add_Course on �ҵ{
instead of insert
as
begin
	--�ˬd�ҷs�W���ҵ{��ƬO�_�s�b(�u�{P.K)
	if exists(    select * from �ҵ{ where �ҵ{�s��=(select �ҵ{�s�� from inserted)     )
	begin
		--p.k����,��insert ���N�� update
		update �ҵ{
		set �W��=inserted.�W��, �Ǥ�=inserted.�Ǥ�
		from �ҵ{ inner join inserted on �ҵ{.�ҵ{�s��=inserted.�ҵ{�s��
	end
	else
	begin
		--������ insert

		insert into �ҵ{
		select * from inserted
	end
end


insert into �ҵ{
values('CS888','aaaaa',2)


