
VARIABLE:=abc,b
T=kind
text=
#cloud-build-local --config=cloudbuild.yaml --dryrun=false .
terraform-init: 

	echo init ; \
	if [ $$(grep ^${T} *.yaml | wc -l) -eq $$(grep '^${T}: CustomResourceDefinition$$' *.yaml | wc -l) ]; then \
		echo in the if ; \
	else \
		echo Ignoring, as other k8 resources are defined ; \
	fi ; \
