scan:
	trivy fs --scanners misconfig .

clean:
	trivy clean --all

skip-dirs:
	trivy fs --scanners misconfig --skip-dirs "modules" .

skip-files:
	trivy fs --scanners misconfig --skip-files "modules/**/*.tf" .

bug-skip-dirs: clean
	trivy fs --scanners misconfig --skip-dirs "../modules" deployments
	trivy fs --scanners misconfig --skip-dirs "modules" deployments

bug-skip-files: clean
	trivy fs --scanners misconfig --skip-files "../modules/**/*.tf" deployments
	trivy fs --scanners misconfig --skip-files "modules/**/*.tf" deployments

bug-debug: clean
	rm -rf report.txt
	trivy fs --scanners misconfig --skip-dirs "../modules" --debug deployments --output report.txt
