# 同步合同的发票金额与支付金额

### 数据库地址

OA Oracle

``` txt
Address: 10.99.9.236:1521
Service Name: orcl
User: dc
Password: wison12#$
```

一体化 MySQL

``` txt
Address: 10.99.10.155:3306
Database: smpt1
User: iipuser
Password: Wison12#$
```

### 定时同步

OA

- BILLMAINDATA_NEW
- BLLDETAILDATA_NEW
- BILLBALANCEDATA_NEW

SCM

- m_po_headers
- m_po_total_costs