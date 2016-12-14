@echo off
@echo ^<?xml version="1.0" encoding="UTF-8" standalone="no"?^> 	>C:\Users\IEUser\my-app\src\main\resources\master.xml
@echo ^<databaseChangeLog  xmlns="http://www.liquibase.org/xml/ns/dbchangelog/1.9" >>C:\Users\IEUser\my-app\src\main\resources\master.xml
@echo					xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" >>C:\Users\IEUser\my-app\src\main\resources\master.xml
@echo					xsi:schemaLocation="http://www.liquibase.org/xml/ns/dbchangelog/1.9 http://www.liquibase.org/xml/ns/dbchangelog/dbchangelog-1.9.xsd"^> >>C:\Users\IEUser\my-app\src\main\resources\master.xml
@echo ^<preConditions^> >>C:\Users\IEUser\my-app\src\main\resources\master.xml
@echo		^<sqlCheck expectedResult="0"^>SELECT NVL(MAX(id),0) FROM databasechangelog WHERE author='MajorVersion'^</sqlCheck^> >>C:\Users\IEUser\my-app\src\main\resources\master.xml
@echo ^</preConditions^> >>C:\Users\IEUser\my-app\src\main\resources\master.xml
forfiles /M *.xml /C "cmd /c echo    ^<include file=@path /^> >>C:\Users\IEUser\my-app\src\main\resources\master.xml" | sort
@echo	^</databaseChangeLog^> >>C:\Users\IEUser\my-app\src\main\resources\master.xml