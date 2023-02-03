$Env:URL = '{{ inputs.url }}'
$Env:PATH = '{{ inputs.path }}'
Invoke-WebRequest -Uri '$Env:URL' -OutFile '$env:GITHUB_WORKSPACE\$Env:PATH'
