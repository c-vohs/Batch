for /F "tokens=3 delims=: " %%H in ('sc query "AutomationManagerAgent" ^| findstr "        STATE"') do (
  if /I "%%H" NEQ "RUNNING" (
   net start "AutomationManagerAgent"
  ) else (
    net stop "AutomationManagerAgent"
    net start "AutomationManagerAgent"
  )
)

for /F "tokens=3 delims=: " %%H in ('sc query "Windows Agent Maintenance Service" ^| findstr "        STATE"') do (
  if /I "%%H" NEQ "RUNNING" (
   net start "Windows Agent Maintenance Service"
  ) else (
    net stop "Windows Agent Maintenance Service"
    net start "Windows Agent Maintenance Service"
  )
)

for /F "tokens=3 delims=: " %%H in ('sc query "Windows Agent Service" ^| findstr "        STATE"') do (
  if /I "%%H" NEQ "RUNNING" (
   net start "Windows Agent Service"
  ) else (
    net stop "Windows Agent Service"
    net start "Windows Agent Service"
  )
)

pause