#방화벽 열기 
```
firewall-cmd --permanent --add-port=80/tcp   # 80번포트 영구적(permanent)으로 열기 
firewall-cmd --reload               #즉시 적용 
```

#방화벽 제거
```
firewall-cmd --permanent --remove-port=80/tcp
firewall-cmd --reload
```

#방화벽 끄기(정지)
```
systemctl stop firewalld
systemctl disable firewalld
```
