.PHONY: help

help:
	@echo "`tput bold`make coverage-generate`tput sgr0` : Run coverage test and generate reports"
	@echo "`tput bold`make coverage-upload`tput sgr0`   : Upload coverage reports to codecov"
	@echo "`tput bold`make run            `tput sgr0`   : Run Flutter Format, Analyze and Tests"
	@echo "`tput bold`make i18n-generate  `tput sgr0`   : Generate i18n files"
list:
	make help

run-format:
	flutter format .
run-analyze:
	flutter analyze
run-test:
	flutter test
run-import-sorter:
	dart run import_sorter:main
run: run-import-sorter run-format run-analyze run-test
i18n-run: dart run slang
i18n-watch: dart run slang watch
runner-watch: 
	dart run build_runner watch -d
generate-splashscreen: 
	dart run flutter_native_splash:create
build-assets: spider build
