.RECIPEPREFIX = >
SHELL := bash

charts-dir = helm-chart-sources

build_packages: lint package index

lint:
> helm lint $(charts-dir)/*

package:
> helm package $(charts-dir)/*

index:
> helm repo index --url https://internetee.github.io/helm-charts .