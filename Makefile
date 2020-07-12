
VARIABLE:=abc,b
T=kind
text=
terraform-init: 

	echo init ; \
	if [ $$(grep ^${T} *.yaml | wc -l) -eq $$(grep '^${T}: CustomResourceDefinition$$' *.yaml | wc -l) ]; then \
		echo in the if ; \
	else \
		echo Ignoring, as other k8 resources are defined ; \
	fi ; \
