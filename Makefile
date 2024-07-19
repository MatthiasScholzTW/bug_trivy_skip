scan:
	trivy fs --scanners misconfig .

skip-dirs:
	trivy fs --scanners misconfig --skip-dirs "modules" .

skip-files:
	trivy fs --scanners misconfig --skip-files "modules/**/*.tf" .

bug-skip-dirs:
	trivy fs --scanners misconfig --skip-dirs "../modules" deployments
	trivy fs --scanners misconfig --skip-dirs "modules" deployments

bug-skip-files:
	trivy fs --scanners misconfig --skip-files "../modules/**/*.tf" deployments
	trivy fs --scanners misconfig --skip-files "modules/**/*.tf" deployments
