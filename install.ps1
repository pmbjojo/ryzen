# Read YAML, extract all lines that start with "  - ", trim the dash and whitespace
(Get-Content .\apps.yaml | Where-Object { $_ -match '^\s*-\s' } | ForEach-Object { $_.TrimStart(" -") }) |
ForEach-Object { winget install --id $_ -e --accept-source-agreements --accept-package-agreements }
