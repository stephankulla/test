
Invoke-WebRequest -Uri http://192.168.2.118/api/stats 

Invoke-WebRequest -Uri http://192.168.2.118/api/power -Method post -ContentType "application/json" -Body "{'power': false}"
Invoke-WebRequest -Uri http://192.168.2.118/api/power -Method post -ContentType "application/json" -Body "{'power': true}"
Invoke-WebRequest -Uri http://192.168.2.118/api/stats

Invoke-WebRequest -Uri http://192.168.2.118/api/notify -Method post `
 -ContentType "application/json" -Body "{'text': 'Hello, Powerclock!', 'rainbow': true, 'duration': 30}"
