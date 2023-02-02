Invoke-WebRequest -Uri '$env:INPUT_URL' -OutFile '$env:GITHUB_WORKSPACE\$env:INPUT_PATH'
