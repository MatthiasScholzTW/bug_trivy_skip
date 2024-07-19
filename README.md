# Reproduction Sample for Trivy Bug

When using a subdirectory the commands `--skip-dirs` and `--skip-files` are ignored.

## Works as expected

``` sh
trivy fs --scanners misconfig --skip-dirs "modules" .
```

``` sh
trivy fs --scanners misconfig --skip-files "modules/**/*.tf" .
```

## Not-Working

``` sh
trivy fs --scanners misconfig --skip-dirs "../modules" deployments
# or
trivy fs --scanners misconfig --skip-dirs "modules" deployments
```

```sh
trivy fs --scanners misconfig --skip-files "../modules/**/*.tf" deployments
# or
trivy fs --scanners misconfig --skip-files "modules/**/*.tf" deployments
```

