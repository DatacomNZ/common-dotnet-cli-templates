param (    
    [string]$appName = $(Read-Host "Enter App Name" )
)
cd ".\src\4. Presentation\"
git clone https://github.com/react-boilerplate/react-boilerplate.git
ren "react-boilerplate" "onion.Presentation.App.$appName"
cd ".\onion.Presentation.App.$appName"
npm run setup