IF NOT "%1"=="" (
	cd ".\src\4. Presentation\"
	git clone https://github.com/react-boilerplate/react-boilerplate.git
	ren "react-boilerplate" "onion.Presentation.App.%1"
	cd ".\onion.Presentation.App.%1"
	npm run setup
)
IF "%1"=="" (
	ECHO "App name is required"
)
pause
