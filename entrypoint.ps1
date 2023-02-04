$Env:URL = '{{ inputs.url }}'
$Env:PATH = '{{ inputs.path }}'
echo $ENV:INPUT_URL
echo $ENV:INPUT_PATH
Invoke-WebRequest -Uri '$ENV:INPUT_URL' -OutFile '/$ENV:INPUT_PATH'
