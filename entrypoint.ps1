$Env:URL = '{{ inputs.url }}'
$Env:PATH = '{{ inputs.path }}'
echo $ENV:INPUT_URL
echo $ENV:INPUT_PATH
Invoke-WebRequest -Uri '$ENV:INPUT_URL' -OutFile '/$ENV:INPUT_PATH'
whereis git
git config --global user.name '$ENV:GITHUB_REPOSITORY_OWNER'
git config --global user.email '$ENV:GITHUB_REPOSITORY_OWNER@users.noreply.github.com'
git add -A
git commit -am "Downloaded the file from '$ENV:INPUT_URL'"
git push      
