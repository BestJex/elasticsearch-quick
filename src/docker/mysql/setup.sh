#!/bin/bash 
set -e 
# �鿴mysql�����״̬���������
echo `service mysql status` 
echo '1.����mysql' 
# ����mysql 
service mysql start 
# ʹ��������
sleep 3 
echo `service mysql status` 
echo '2.��ʼ��������' 
#����sql�ļ�
mysql < /mysql/data.sql 
echo '3.�����������....' 
sleep 3 
echo `service mysql status` 
# �����ʼ����mysqlmysqlΪ���ܵ�½��Ϊ�˰�ȫ���ڴ�����mysql����
echo '4.��ʼ�޸�����....' 
# �����޸�mysqlȨ�����õ��ļ�
mysql < /mysql/privileges.sql 
echo '5.�޸��������....' 
#sleep 3 
echo `service mysql status` 
echo 'mysql�����������,�����ݵ���ɹ�' 

# ��docker�����з�ִֹ����֮������ֹͣ����������һ�������������
tail -f /dev/null
