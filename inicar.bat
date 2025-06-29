@echo off
start javaw -jar Snowman-0.0.1-SNAPSHOT.jar
timeout /t 5 >nul
start http://localhost:8080/
timeout /t 1 >nul
start http://localhost:8080/h2-console
pause
